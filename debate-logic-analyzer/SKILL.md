---
name: debate-logic-analyzer
description: Auditoria lógica e epistemológica de textos argumentativos — colunas, ensaios, polêmicas, posts longos, transcrições, e também rascunhos próprios antes de publicar. Executa três análises (diagrama de Nolt, formalização proposicional ou de predicados em Unicode, teste forte do Mito do Dado à la Sellars) e fecha com veredicto integrado. Reconstrói conclusões implícitas em perguntas retóricas e revela universais escondidas em argumentos por exemplo singular. Use SEMPRE que o usuário pedir para "analisar", "auditar", "diagramar", "verificar a lógica", "ver se o argumento se sustenta", "passar pelo Mito do Dado", "formalizar", "checar antes de publicar" ou similar. Use também quando o usuário colar texto de terceiros — colunista, debatedor, adversário retórico — e pedir leitura crítica, mesmo sem mencionar termos técnicos. Não use para revisão puramente estilística, nem para textos puramente expositivos sem pretensão argumentativa.
---

# Debate Logic Analyzer

Skill de auditoria lógica e epistemológica de textos argumentativos. Cobre três operações distintas e uma síntese final. Produz prosa estruturada no chat, sem geração de arquivo.

## Princípio operativo

O analista não é parafraseador. Cada uma das três análises responde a uma pergunta distinta, e nenhuma pode ser confundida com outra:

- **Nolt** responde: como o autor *organiza* o suporte às suas conclusões?
- **Proposicional** responde: a inferência *vale formalmente*?
- **Sellars** responde: o autor reconhece a *mediação conceitual* das evidências que invoca?

A confusão entre os três é o erro mais comum — e o mais letal. Validade formal não garante mediação epistêmica; mediação epistêmica não garante diagrama coerente; diagrama coerente não garante validade formal.

## Estrutura fixa da saída

A resposta no chat **sempre** segue esta estrutura, com os títulos exatamente como aparecem abaixo:

```
**I. Diagrama de Nolt**
[análise]

**II. Análise Proposicional**
[análise]

**III. Teste do Mito do Dado (leitura forte)**
[análise]

**IV. Veredicto integrado**
[parágrafo de fechamento]
```

Não inclua preâmbulo antes da seção I. Não inclua resumo do texto analisado — o autor sabe o que escreveu. Vá direto à primeira análise.

---

## I. Diagrama de Nolt

Identifique as proposições nucleares do texto e numere-as: P1, P2, …, Pn como premissas; C1, C2, …, Cn como conclusões (a maioria dos textos longos tem mais de uma conclusão, frequentemente em cadeia).

Para cada premissa e conclusão, extraia a formulação mais precisa possível em uma frase — não parafraseie ao ponto de descaracterizar, mas também não copie verbatim quando a redação original esconder a estrutura lógica.

Em seguida, represente as relações entre premissas em diagrama textual ASCII. Use estas convenções:

- **Suporte convergente** (cada premissa sustenta a conclusão independentemente):
  ```
  P1   P2   P3
   \   |   /
    \  |  /
       C
  ```
- **Suporte ligado** (as premissas só sustentam a conclusão em conjunto):
  ```
  P1 + P2
     |
     C
  ```
- **Suporte serial** (uma conclusão intermediária vira premissa da seguinte):
  ```
  P1 + P2
     |
     C1 (= P3)
     +
     P4
     |
     C2
  ```

Após o diagrama, comente em uma a três sentenças as características estruturais relevantes: cadeias longas com elos frágeis, premissas órfãs (afirmadas mas não sustentadas nem usadas), conclusões implícitas que o autor não enuncia mas opera com elas, redundâncias retóricas que parecem premissas distintas mas são reformulações da mesma proposição.

---

## II. Análise Proposicional

Formalize os argumentos centrais em lógica proposicional. Atribua variáveis (P, Q, R, S…) a cada proposição atômica. Use estes conectivos Unicode obrigatoriamente:

- ∧ (conjunção)
- ∨ (disjunção)
- → (condicional)
- ¬ (negação)
- ↔ (bicondicional)
- ⊢ (acarreta — separa premissas da conclusão)

Exemplo de formalização:
```
P: O Estado tem dever de neutralidade ideológica
Q: A educação pública veicula conteúdo curricular
R: O conteúdo curricular tem carga valorativa
S: A neutralidade absoluta do Estado é possível

(P ∧ Q ∧ R) → ¬S
P, Q, R ⊢ ¬S
```

Avalie a validade formal do argumento principal. Se válido, identifique a forma (modus ponens, modus tollens, silogismo hipotético, silogismo disjuntivo, etc.). Se inválido, nomeie a falácia formal (afirmação do consequente, negação do antecedente, falácia da divisão, generalização indevida — apenas se for de fato falácia *formal*, não material).

A formalização frequentemente revela defeitos materiais que não são falácias formais mas comprometem o argumento — comente-os quando aparecerem. Padrões típicos:

- **Non sequitur** entre uma conclusão e a seguinte (uma premissa nova entra colada à retórica, sem derivação).
- **Falácia da redução de predicado complexo** (um conceito multidimensional — civilização, segurança, mérito, justiça — é tratado como redutível a um indicador único, e essa redução opera como premissa silenciosa).
- **Viés de seleção de base de comparação** (comparar escalas heterogêneas, recortes incompatíveis, ou casos cuidadosamente escolhidos como se fossem representativos).
- **Equívoco** (um termo muda de sentido entre duas ocorrências, mantendo a aparência de continuidade).
- **Petição de princípio formal** (a conclusão aparece, sob outro nome, entre as premissas).

A fronteira a respeitar: comente o que a *estrutura* do argumento revela, não a *verdade material* das proposições. Que P3 afirme "a taxa em Curitiba é 22" pertence ao fact-checking — fora do escopo. Que P3 e P1 comparem unidades de agregação incompatíveis (uma capital com uma média nacional) é defeito estrutural revelado pela formalização — dentro do escopo. Se está em dúvida, pergunte: o defeito ficaria visível para alguém que aceitasse provisoriamente todas as proposições como verdadeiras? Se sim, comente. Se não, é fact-checking — deixe para outra ferramenta.

Quando o argumento for informal por natureza (indução, analogia, abdução), reconheça-o e formalize apenas o esqueleto inferencial, indicando que a avaliação completa depende de critérios materiais que ficam fora deste passo. Não force formalização proposicional sobre argumentação que não a comporta — isso é pior que não formalizar.

Quando o argumento depender de uma universalização não enunciada (caso típico: exemplo singular que pretende valer para todos os casos do tipo), estenda a notação para lógica de predicados de primeira ordem. Adicione ∀ (universal) e ∃ (existencial), e use predicados unários ou n-ários (P(x), Q(x, y)) em vez de variáveis proposicionais simples. Tornar visíveis as universais escondidas é frequentemente o que a formalização revela de mais importante — o argumento pode ser formalmente válido dadas as universais, mas as universais é que carregam o peso polêmico.

---

## III. Teste do Mito do Dado (leitura forte)

Esta é a seção mais exigente. Não confunda com checagem factual ou verificação empírica — o teste opera no nível epistemológico, não jornalístico.

A leitura forte de Sellars exige reconstruir o **espaço lógico das razões** em que o autor está operando, e identificar qual nível conceitual o autor está naturalizando como se fosse dado bruto.

Execute em três passos:

**1. Identifique as evidências invocadas.** Liste o que o autor trata como base não-controversa do argumento: dados estatísticos, "fatos óbvios", percepções diretas, experiências pessoais, autoridades, citações que dispensam discussão, intuições morais apresentadas como universais.

**2. Reconstrua o aparato conceitual pressuposto.** Cada evidência só conta como evidência *para alguma coisa* dentro de uma rede de conceitos prévios. Pergunte: que distinções, categorias e compromissos teóricos o autor precisa já ter aceito para que essa evidência funcione como evidência? Exemplo: invocar "produtividade econômica" como dado pressupõe (i) uma teoria do valor, (ii) uma métrica de agregação, (iii) um recorte de relevância. Nenhum desses três é dado — são conceitos que estruturam o que conta como dado.

**3. Aponte o nível naturalizado.** Identifique exatamente qual camada conceitual o autor trata como pré-teórica quando na verdade é teoricamente carregada. Use a formulação: "O autor invoca X como se fosse dado, mas X só funciona como evidência dentro do espaço conceitual que pressupõe Y e Z."

Emita ao final o veredicto desta seção: **passa** (o autor reconhece, ainda que implicitamente, a mediação conceitual das evidências) ou **falha** (o autor trata um ou mais níveis conceitualmente carregados como pré-teóricos). Quando falha, especifique se a falha é local (uma evidência mal-naturalizada num argumento que de resto reconhece mediação) ou estrutural (o argumento inteiro depende da naturalização).

Observação técnica: o autor canônico do argumento contra o Mito do Dado é Sellars, em "Empiricism and the Philosophy of Mind" (1956), com extensões em McDowell (*Mind and World*) e Brandom (*Making It Explicit*).

---

## IV. Veredicto integrado

Um parágrafo. Não mais que oito sentenças. Articula os três resultados num juízo único.

Estrutura interna do parágrafo:

1. Uma sentença curta e afirmativa: o juízo central sobre o texto.
2. Uma a três sentenças de sustentação: como cada análise contribui para o juízo.
3. Uma sentença aforística de fechamento: o veredicto condensado.

O parágrafo não deve repetir literalmente o que as três seções anteriores já disseram. Deve articular como elas se relacionam — frequentemente, um texto passa numa análise e falha em outra, e o veredicto integrado mostra o que essa combinação revela.

**Restrição diagnóstica.** O veredicto descreve o que o argumento é, não o que poderia ser. Identifica fragilidades; não sugere reparos. Aponta onde uma premissa carrega peso que não justifica, onde um salto extrapola o sustentado, onde uma naturalização opera escondida. Não escreve "pode ser suavizado", "vale reformular", "ganharia força se", nem variantes. A linguagem do auditor é descritiva — a do conselheiro retórico é prescritiva, e cada função exige distância da outra. Quem audita o próprio texto precisa de um leitor frio, não de um aliado entusiasta.

Evite vícios estilísticos comuns na prosa de auditoria: nenhuma antítese de retificação ("não é X; é Y"), nenhum "não apenas… mas também", nenhuma triade decorativa. Adjetivos contados. Humor apenas se organicamente justificado pelo material.

---

## Casos especiais

**Texto do próprio usuário (auto-auditoria):** trate com o mesmo rigor de um texto de terceiros. A familiaridade com o autor não é razão para suavização. Quando o veredicto for crítico, seja direto — o usuário pediu auditoria, não validação.

**Texto curto (parágrafo único, tweet longo, aforismo):** mantenha as quatro seções, mas reduza proporcionalmente. Um diagrama de Nolt para um aforismo pode ter duas premissas e uma conclusão; isso é suficiente.

**Texto sem estrutura argumentativa clara:** se o material for puramente expositivo, descritivo, narrativo ou expressivo, pare antes da seção I e informe ao usuário que o texto não comporta análise lógico-argumentativa, indicando uma frase do porquê. Não force estrutura argumentativa sobre material que não a tem.

**Texto longo (mais de 2.000 palavras):** identifique o argumento *principal* e analise-o. Mencione brevemente argumentos secundários relevantes, mas não duplique a análise tripla para cada um — isso desfocaria o veredicto.

**Argumentação indutiva, analógica ou abdutiva predominante:** a seção II ficará mais curta e mais qualitativa. Indique a forma do argumento, avalie a força do suporte (no caso de indução) ou a relevância da analogia, e mova o peso da análise para as seções I e III, onde a estrutura inferencial e o aparato conceitual aparecem com mais nitidez.

**Texto que termina em perguntas retóricas (sem conclusão declarativa):** a conclusão existe — está pressuposta na estrutura das perguntas. Reconstrua-a explicitamente na seção I, marcando-a como implícita (ex.: "C1 (implícita, pressuposta pelas perguntas): …"). Pergunta retórica é dispositivo argumentativo, não recusa de argumentar. Identificar a conclusão suprimida é parte do trabalho — frequentemente é o passo mais revelador, porque a supressão é estratégica: o autor não quer assumir o ônus da defesa direta. A análise das seções II, III e IV deve operar sobre a conclusão reconstruída como se o autor a tivesse declarado, e o veredicto integrado costuma incluir um comentário sobre o que a forma interrogativa esconde.

**Exemplo singular que pressupõe universal escondida:** quando o texto apresenta um ou poucos casos individuais e extrai conclusões aplicáveis a todos os casos do tipo, o argumento depende de uma universalização não enunciada. Nesses casos, a seção II precisa de lógica de predicados, não apenas proposicional. Use os quantificadores ∀ (para todo) e ∃ (existe), e predicados unários ou n-ários (M(x), N(x, n), etc.) para tornar visível a estrutura universal escondida. A revelação técnica é a mesma de sempre: o argumento é formalmente válido *dadas* as universais, mas as universais é que são o problema. Tornar essa estrutura visível na formalização é o que distingue auditoria de paráfrase.

---

## O que esta skill não faz

- Não revisa estilo — revisão estilística é tarefa separada.
- Não faz checagem factual nem fact-checking jornalístico. Defeitos *estruturais* relacionados a dados — viés de seleção de base, incomparabilidade de escalas, redução de predicado complexo a indicador único — entram na seção II como comentário sobre o que a formalização revela. Verificar se um número está correto não entra. A pergunta de fronteira é simples: o defeito aparece mesmo que se aceitem todas as proposições como verdadeiras? Se sim, é estrutural. Se não, é fato.
- Não emite juízo político ou ideológico sobre as conclusões — apenas sobre a estrutura lógica e o aparato epistêmico.
- Não sugere reforços, reformulações ou caminhos de reparo. O auditor descreve o que o argumento é; não recomenda o que ele poderia ser. Identificar uma fragilidade carrega implicitamente uma direção possível de revisão — pare na descrição da fragilidade. Não escreva "pode ser reformulado", "ganharia força", "vale formalizar em outra chave". Diagnóstico, não conselho.
- Não reescreve o texto. Quando o veredicto identifica falhas, indica onde e por quê; a reescrita é tarefa separada.
