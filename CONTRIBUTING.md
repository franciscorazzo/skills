# Como adicionar uma skill

Cada skill vive numa subpasta própria e segue o mesmo padrão. O processo:

## 1. Criar a pasta a partir do template

Copie `_template/` para uma pasta com o nome da skill (kebab-case, igual ao campo `name` do frontmatter):

```
cp -r _template/ minha-skill/
```

Estrutura final esperada de cada skill:

```
minha-skill/
├── SKILL.md          ← fonte (frontmatter + corpo)
├── README.md         ← página de apresentação
├── LICENSE           ← MIT
└── minha-skill.skill ← pacote (gerado pelo script, não edite à mão)
```

Copie a `LICENSE` de qualquer skill existente.

## 2. Escrever o SKILL.md

Preencha os placeholders `{{...}}` do template. Princípios que deram certo na `debate-logic-analyzer`:

- **Frontmatter:** `name` igual ao nome da pasta; `description` com os gatilhos de invocação e a fronteira com outras skills.
- **Estrutura fixa de saída:** títulos exatos, sem preâmbulo.
- **Cada teste responde a uma pergunta distinta** — e a skill deixa explícito o que *não* faz, remetendo às outras.
- **Exemplo completo:** um texto real com a análise das quatro seções. É a peça de maior impacto na consistência; não pule.
- **Restrição diagnóstica:** descrever, não aconselhar. E orientar o caso "o texto se sustenta".

## 3. Empacotar e validar

```
pwsh scripts/package-skills.ps1
```

O script valida o frontmatter de cada skill, checa que nenhuma referência pessoal vazou e (re)gera o `.skill`. Use `-Check` para só validar, sem gerar.

## 4. Registrar no índice e publicar

- Adicione uma linha em `README.md` (raiz) apontando para a nova skill.
- Commit e push.

## Despersonalização

Skills deste repositório são públicas. O script bloqueia referências pessoais conhecidas (nome do autor, skills privadas). Antes de publicar, confira que a skill fala de "o usuário" / "o autor", não de uma pessoa específica.
