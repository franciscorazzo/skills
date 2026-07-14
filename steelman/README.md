# Steelman

Agent Skill de reconstrução caridosa de posições — para colunas, ensaios, polêmicas e rascunhos antes de publicar.

As skills de auditoria descrevem o que um texto é; esta produz o que falta ao texto: **a versão mais forte daquilo que ele combate**. Dado um texto que critica uma posição, reconstrói essa posição na forma mais forte e mais caridosa e confronta o argumento do texto com ela — para uma polêmica que derrota o melhor adversário, não o mais conveniente. Toda a saída é prosa estruturada no chat, sem geração de arquivo.

## Os quatro passos

| Seção | O que faz |
|-------|-----------|
| **I. Posição-alvo** | Como o texto representa a posição que ataca ou defende. |
| **II. Reconstrução forte (steelman)** | A melhor versão da posição adversária — premissas caridosas, melhores argumentos, distinções apagadas. |
| **III. Confronto** | O argumento do texto sobrevive ao steelman, ou só vencia o espantalho? |
| **IV. Veredicto integrado** | O ataque resiste à versão mais forte da posição contrária? |

Dois modos, a mesma mecânica:
- **Auditoria de caridade** — o texto critica uma posição; a skill reconstrói essa posição forte e checa se a crítica a atinge.
- **Red-team** — o texto sustenta uma tese; a skill reconstrói a oposição mais forte e testa se a tese resiste.

## Princípio: forte, mas fiel

O steelman reconstrói a melhor versão *daquela* posição — não uma tese diferente posta no lugar (isso seria evasão, não caridade). E reconstruir uma posição na forma forte **não é endossá-la**: o analista não toma partido, e daria o mesmo tratamento à posição oposta.

## Fronteira com outras skills

- Não avalia validade lógico-formal — isso é da [`debate-logic-analyzer`](../debate-logic-analyzer/).
- Não audita conceitos — isso é da [`concept-auditor`](../concept-auditor/).
- Não analisa retórica — isso é da [`rhetoric-analyzer`](../rhetoric-analyzer/).

## Instalação

- **`SKILL.md`** — arquivo-fonte. Coloque a pasta em `~/.claude/skills/steelman/SKILL.md`.
- **`steelman.skill`** — pacote empacotado, para clientes que aceitam upload direto.

## Uso

Depois de instalada, invoque pedindo para fazer o steelman de um texto, reconstruir o argumento contrário, checar se você está atacando um espantalho, ou bancar o advogado do diabo da sua própria tese — e cole o texto.

## Fundamentação

- **Regras de Rapoport (reexpressar o oponente na forma mais forte)** — Dennett, Daniel C. *Intuition Pumps and Other Tools for Thinking*.
- **Só conhece a própria posição quem conhece a melhor versão da oposta** — Mill, John Stuart. *On Liberty*, cap. II.
- **Princípio de caridade** — Davidson, Donald. *Inquiries into Truth and Interpretation*.
- **Regra pragma-dialética contra o espantalho** — van Eemeren, Frans H.; Grootendorst, Rob. *A Systematic Theory of Argumentation*.

## Licença

MIT — veja [LICENSE](LICENSE).

Autor: Francisco Razzo.
