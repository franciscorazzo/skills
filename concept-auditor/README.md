# Concept Auditor

Agent Skill de auditoria conceitual de textos argumentativos — colunas, ensaios, polêmicas, posts longos, transcrições, e rascunhos antes de publicar.

Onde a análise lógica pergunta se a *inferência* vale, esta pergunta se os *conceitos* que a inferência move se mantêm estáveis. Um argumento pode ser formalmente válido e ainda assim vazio, se um de seus termos muda de sentido no percurso. A skill separa palavra de conceito e rastreia o conceito. Toda a saída é prosa estruturada no chat, sem geração de arquivo.

## Os três testes

| Seção | Pergunta que responde |
|-------|-----------------------|
| **I. Mapa conceitual** | Quais conceitos carregam o peso, e com que sentido operam? |
| **II. Teste de estabilidade** | Cada conceito mantém o mesmo sentido em todas as ocorrências? |
| **III. Teste de definição** | As definições são honestas, ou embutem a conclusão? |
| **IV. Veredicto integrado** | O que a combinação dos três revela sobre a saúde conceitual do texto? |

- **Mapa conceitual** — identifica os termos que carregam peso argumentativo, o sentido em uso de cada um (explícito ou reconstruído) e sua carga valorativa.
- **Teste de estabilidade** — caça equívoco, deslizamento semântico, anfibologia e vaguidade operante: os modos pelos quais um conceito escorrega enquanto a palavra permanece.
- **Teste de definição** — classifica as definições (estipulativa, lexical, persuasiva, circular) e sinaliza conceitos essencialmente contestados tratados como unívocos.
- **Veredicto integrado** — um parágrafo, estritamente descritivo, articulando os três testes num juízo sobre a saúde conceitual do texto.

## Fronteira com outras skills

- Não avalia validade lógico-formal — isso é da [`debate-logic-analyzer`](../debate-logic-analyzer/).
- Não faz o teste do Mito do Dado — naturalização de evidência é problema epistêmico, não conceitual.
- Não revisa estilo nem faz checagem factual.

## Instalação

- **`SKILL.md`** — arquivo-fonte. Coloque a pasta em `~/.claude/skills/concept-auditor/SKILL.md`.
- **`concept-auditor.skill`** — pacote empacotado, para clientes que aceitam upload direto.

## Uso

Depois de instalada, invoque pedindo para auditar os conceitos, checar as definições ou ver se um termo desliza — e cole o texto.

## Fundamentação

- **Definição persuasiva** — Stevenson, Charles L. *Ethics and Language*.
- **Conceito essencialmente contestado** — Gallie, W. B. "Essentially Contested Concepts" (1956).
- **Sentido como uso; semelhanças de família** — Wittgenstein, Ludwig. *Investigações Filosóficas*.
- **Textura aberta e vaguidade** — Waismann, Friedrich. "Verifiability" (1945).
- **Reconstrução e análise de conceitos** — Sartori, Giovanni. *Social Science Concepts*.

## Licença

MIT — veja [LICENSE](LICENSE).

Autor: Francisco Razzo.
