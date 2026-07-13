# Debate Logic Analyzer

Agent Skill para auditoria lógica e epistemológica de textos argumentativos — colunas, ensaios, polêmicas, posts longos, transcrições e rascunhos antes de publicar.

A skill não parafraseia nem revisa estilo. Ela executa três análises independentes sobre a estrutura de um argumento e fecha com um veredicto integrado. Toda a saída é prosa estruturada no chat, sem geração de arquivo.

## As três análises

| Seção | Pergunta que responde |
|-------|-----------------------|
| **I. Diagrama de Nolt** | Como o autor *organiza* o suporte às suas conclusões? |
| **II. Análise Proposicional** | A inferência *vale formalmente*? |
| **III. Teste do Mito do Dado** | O autor reconhece a *mediação conceitual* das evidências que invoca? |
| **IV. Veredicto integrado** | O que a combinação dos três resultados revela sobre o texto? |

- **Diagrama de Nolt** — extrai premissas e conclusões, numera-as e representa em ASCII as relações de suporte (convergente, ligado, serial), expondo cadeias frágeis, premissas órfãs e conclusões implícitas.
- **Análise Proposicional** — formaliza o argumento central em lógica proposicional (conectivos Unicode: ∧ ∨ → ¬ ↔ ⊢) e, quando há universalização escondida, estende para lógica de predicados de primeira ordem (∀ ∃). Avalia validade formal e nomeia falácias formais e defeitos estruturais.
- **Teste do Mito do Dado** — leitura forte à la Sellars. Reconstrói o espaço lógico das razões e identifica qual nível conceitual o autor naturaliza como se fosse dado bruto.
- **Veredicto integrado** — um parágrafo que articula os três resultados num juízo único, estritamente descritivo: aponta fragilidades, não sugere reparos.

## Recursos

- Reconstrói conclusões implícitas em textos que terminam em perguntas retóricas.
- Revela universais escondidas em argumentos que generalizam a partir de um exemplo singular.
- Trata textos curtos (aforismo, tweet longo) e longos (mais de 2.000 palavras) com estratégias proporcionais.
- Reconhece argumentação indutiva, analógica ou abdutiva e adapta a análise em vez de forçar formalização.

## O que a skill não faz

- Não revisa estilo.
- Não faz checagem factual nem fact-checking jornalístico (defeitos *estruturais* ligados a dados entram na análise; verificar se um número está correto, não).
- Não emite juízo político ou ideológico sobre as conclusões — apenas sobre a estrutura lógica e o aparato epistêmico.
- Não sugere reforços, reformulações ou caminhos de reparo. Diagnóstico, não conselho.
- Não reescreve o texto.

## Instalação

A skill é distribuída de duas formas neste repositório:

- **`SKILL.md`** — o arquivo-fonte. Coloque a pasta da skill no seu diretório de skills do Claude (por exemplo `~/.claude/skills/debate-logic-analyzer/SKILL.md`).
- **`debate-logic-analyzer.skill`** — o pacote empacotado, para clientes que aceitam upload direto do arquivo `.skill`.

## Uso

Depois de instalada, invoque pedindo para analisar, auditar, diagramar, verificar a lógica ou formalizar um texto — cole o texto a ser analisado em seguida.

## Fundamentação

- **Diagrama de Nolt** — Nolt, John. *Informal Logic: Possible Worlds and Imagination*.
- **Lógica proposicional e de predicados** — Mortari, Cezar A. *Introdução à Lógica*. São Paulo: Editora UNESP.
- **Mito do Dado** — Sellars, Wilfrid. *Empiricism and the Philosophy of Mind* (1956); extensões em McDowell (*Mind and World*) e Brandom (*Making It Explicit*).

## Licença

MIT — veja [LICENSE](LICENSE).

Autor: Francisco Razzo.
