# Rhetoric Analyzer

Agent Skill de análise retórica de textos argumentativos — colunas, ensaios, discursos, polêmicas, posts longos, transcrições, e rascunhos antes de publicar.

Responde a uma pergunta que a lógica formal ignora: **como o texto persuade, para além das razões que oferece?** Onde a análise lógica pergunta se a inferência vale, esta pergunta por que meios o texto busca adesão. Persuadir não é falacioso por si — a skill descreve a mecânica da persuasão, não a condena. Toda a saída é prosa estruturada no chat, sem geração de arquivo.

## As três análises

| Seção | Pergunta que responde |
|-------|-----------------------|
| **I. Meios de persuasão** | Por quais apelos o texto busca adesão — ethos, pathos, logos? |
| **II. Enquadramento e esquemas** | Como o texto molda o terreno da disputa, e que esquemas argumentativos opera? |
| **III. Táticas dialéticas** | Que movimentos executa em relação a um interlocutor, real ou imaginado? |
| **IV. Veredicto integrado** | Qual o perfil retórico do texto, e onde a persuasão substitui o argumento? |

- **Meios de persuasão** — ethos (autoridade de quem fala), pathos (emoção do auditório), logos (aparência de razão): identifica o dispositivo, não apenas o rótulo.
- **Enquadramento e esquemas** — como o texto pressupõe, exclui e nomeia (framing), e quais esquemas argumentativos opera, com as *perguntas críticas* que cada um deixa em aberto.
- **Táticas dialéticas** — concessão, prolepse, refutação, ad hominem, deslocamento do ônus — e o tipo de diálogo que o texto aparenta travar contra o que de fato trava.
- **Veredicto integrado** — um parágrafo, estritamente descritivo, traçando o perfil retórico e o encadeamento entre enquadramento, apelo e tática.

## Fronteira com outras skills

- Não avalia validade lógico-formal — isso é da [`debate-logic-analyzer`](../debate-logic-analyzer/).
- Não audita a estabilidade dos conceitos — isso é da [`concept-auditor`](../concept-auditor/).
- Não revisa estilo nem faz checagem factual. Não emite juízo moral sobre persuadir.

## Instalação

- **`SKILL.md`** — arquivo-fonte. Coloque a pasta em `~/.claude/skills/rhetoric-analyzer/SKILL.md`.
- **`rhetoric-analyzer.skill`** — pacote empacotado, para clientes que aceitam upload direto.

## Uso

Depois de instalada, invoque pedindo para analisar a retórica, ver como o texto persuade ou mapear os apelos — e cole o texto.

## Fundamentação

- **Esquemas argumentativos e perguntas críticas** — Walton, Douglas N.; Reed, Chris; Macagno, Fabrizio. *Argumentation Schemes*. Cambridge University Press.
- **Retórica, persuasão e dialética** — Walton, Douglas N. *Media Argumentation: Dialectic, Persuasion, and Rhetoric*. Cambridge University Press.
- **Emoção no argumento (pathos)** — Walton, Douglas N. *The Place of Emotion in Argument*. Penn State University Press.
- **Tipos de diálogo** — Walton, Douglas N. *Fundamentals of Critical Argumentation*. Cambridge University Press.
- **Raiz dos três meios (ethos/pathos/logos)** — Aristóteles. *Retórica*.

## Licença

MIT — veja [LICENSE](LICENSE).

Autor: Francisco Razzo.
