<#
.SYNOPSIS
    Regenera e valida os pacotes .skill de cada skill do repositório.

.DESCRIPTION
    Varre cada subpasta que contém um SKILL.md, valida o frontmatter e
    (re)gera o pacote <skill>/<name>.skill — um zip com <name>/SKILL.md dentro.
    Reporta o resultado de cada skill; encerra com código 1 se qualquer uma falhar.

    Pastas ignoradas: as que começam com "_", ".", e "scripts".

.PARAMETER Check
    Só valida; não escreve nenhum .skill.

.EXAMPLE
    pwsh scripts/package-skills.ps1
    pwsh scripts/package-skills.ps1 -Check
#>
[CmdletBinding()]
param(
    [switch]$Check
)

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot

# Termos que não podem vazar para uma skill pública (despersonalização).
$forbidden = @('Razzo', 'razzo-estilo')

function Read-Frontmatter {
    param([string]$Path)
    $lines = Get-Content -LiteralPath $Path -Encoding utf8
    if ($lines[0] -ne '---') { return $null }
    $end = -1
    for ($i = 1; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -eq '---') { $end = $i; break }
    }
    if ($end -lt 0) { return $null }
    $fm = @{}
    foreach ($line in $lines[1..($end - 1)]) {
        if ($line -match '^\s*([A-Za-z0-9_-]+)\s*:\s*(.*)$') {
            $fm[$Matches[1]] = $Matches[2].Trim()
        }
    }
    return $fm
}

$skillDirs = Get-ChildItem -LiteralPath $repoRoot -Directory |
    Where-Object { $_.Name -notmatch '^[_.]' -and $_.Name -ne 'scripts' } |
    Where-Object { Test-Path (Join-Path $_.FullName 'SKILL.md') } |
    Sort-Object Name

if (-not $skillDirs) {
    Write-Host "Nenhuma skill encontrada em $repoRoot" -ForegroundColor Yellow
    exit 0
}

$failures = 0
Write-Host "Repositório: $repoRoot`n"

foreach ($dir in $skillDirs) {
    $name = $dir.Name
    $skillMd = Join-Path $dir.FullName 'SKILL.md'
    $problems = @()

    # 1. Frontmatter
    $fm = Read-Frontmatter -Path $skillMd
    if ($null -eq $fm) {
        $problems += "frontmatter ausente ou malformado"
    } else {
        if (-not $fm.ContainsKey('name') -or [string]::IsNullOrWhiteSpace($fm['name'])) {
            $problems += "campo 'name' ausente"
        } elseif ($fm['name'] -ne $name) {
            $problems += "name ('$($fm['name'])') difere do nome da pasta ('$name')"
        }
        if (-not $fm.ContainsKey('description') -or [string]::IsNullOrWhiteSpace($fm['description'])) {
            $problems += "campo 'description' ausente"
        }
    }

    # 2. Despersonalização
    $content = Get-Content -LiteralPath $skillMd -Raw -Encoding utf8
    foreach ($term in $forbidden) {
        if ($content -match [regex]::Escape($term)) {
            $problems += "referência pessoal encontrada: '$term'"
        }
    }

    if ($problems.Count -gt 0) {
        Write-Host "[FALHA] $name" -ForegroundColor Red
        $problems | ForEach-Object { Write-Host "         - $_" -ForegroundColor Red }
        $failures++
        continue
    }

    if ($Check) {
        Write-Host "[OK]    $name (validado)" -ForegroundColor Green
        continue
    }

    # 3. (Re)gerar o pacote .skill
    $tmp = Join-Path $repoRoot "_pkg"
    if (Test-Path $tmp) { Remove-Item -Recurse -Force $tmp }
    New-Item -ItemType Directory -Force (Join-Path $tmp $name) | Out-Null
    Copy-Item $skillMd (Join-Path $tmp "$name\SKILL.md")

    $out = Join-Path $dir.FullName "$name.skill"
    if (Test-Path $out) { Remove-Item -Force $out }
    $zip = Join-Path $repoRoot "_pkg.zip"
    Compress-Archive -Path (Join-Path $tmp $name) -DestinationPath $zip -Force
    Move-Item $zip $out -Force
    Remove-Item -Recurse -Force $tmp

    $kb = [math]::Round((Get-Item $out).Length / 1KB, 1)
    Write-Host "[OK]    $name -> $name.skill ($kb KB)" -ForegroundColor Green
}

Write-Host ""
if ($failures -gt 0) {
    Write-Host "$failures skill(s) com problema. Nenhum pacote inválido foi publicado." -ForegroundColor Red
    exit 1
}
Write-Host "Todas as skills validadas e empacotadas." -ForegroundColor Green
exit 0
