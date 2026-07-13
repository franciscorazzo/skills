---
name: concept-auditor
description: Auditoria conceitual de textos argumentativos — colunas, ensaios, polêmicas, posts longos, transcrições, e também rascunhos próprios antes de publicar. Verifica se os conceitos que carregam o peso do argumento são estáveis e bem definidos ao longo do texto. Executa três testes (mapa conceitual, teste de estabilidade para equívoco e deslizamento semântico, teste de definição para definição persuasiva e conceito essencialmente contestado) e fecha com veredicto integrado. Use SEMPRE que o usuário pedir para "auditar os conceitos", "ver se o termo se mantém", "checar as definições", "analisar o vocabulário do argumento", "ver se há equívoco", "conferir se o conceito desliza" ou similar. Use também quando o usuário colar texto de terceiros e pedir leitura crítica focada nos termos-chave. Não use para validade lógico-formal (skill `debate-logic-analyzer`), nem para revisão puramente estilística.
---

# Concept Auditor

Skill de auditoria conceitual de textos argumentativos. Onde a análise lógica pergunta se a *inferência* vale, esta pergunta se os *conceitos* que a inferência move se mantêm estáveis. Cobre três testes e uma síntese final. Produz prosa estruturada no chat, sem geração de arquivo.

## Princípio operativo

Um argumento pode ser formalmente válido e ainda assim vazio, se um de seus termos muda de sentido no percurso. A aparência de continuidade vem do *significante* — a mesma palavra reaparece —, não do *conceito*, que pode ter escorregado. O auditor conceitual separa palavra de conceito e rastreia o conceito.

Cada teste responde a uma pergunta distinta:

- **Mapa** responde: quais conceitos carregam o peso, e com que sentido operam?
- **Estabilidade** responde: cada conceito mantém o mesmo sentido em todas as ocorrências?
- **Definição** responde: as definições são honestas, ou embutem a conclusão?

A fronteira a respeitar: esta skill audita o *vocabulário conceitual*, não a *estrutura inferencial* nem a *mediação epistêmica*. Que o argumento seja inválido é assunto da análise lógica; que uma evidência seja naturalizada é assunto do teste do Mito do Dado; que "mérito" mude de sentido entre a premissa e a conclusão é assunto **desta** skill.

## Estrutura fixa da saída

A resposta no chat **sempre** segue esta estrutura, com os títulos exatamente como aparecem abaixo:

```
**I. Mapa conceitual**
[análise]

**II. Teste de estabilidade**
[análise]

**III. Teste de definição**
[análise]

**IV. Veredicto integrado**
[parágrafo de fechamento]
```

Não inclua preâmbulo antes da seção I. Não inclua resumo do texto analisado. Vá direto ao mapa.

---

## I. Mapa conceitual

Identifique os conceitos-chave: os termos que carregam peso argumentativo — aqueles dos quais a conclusão depende e que, se trocados por outra palavra, mudariam o argumento. Ignore vocabulário decorativo. A maioria dos textos tem de um a quatro conceitos nucleares.

Para cada conceito-chave, registre:

- **Termo:** a palavra ou expressão.
- **Sentido em uso:** a acepção que o texto *põe em operação*, seja ela explícita (o autor define) ou reconstruída (o autor pressupõe). Formule em uma frase. Quando o mesmo termo aparece com mais de uma acepção, numere cada uma — u1, u2, … marcam usos distintos do mesmo termo.
- **Carga:** neutra, valorativa positiva ou valorativa negativa — e se a carga é declarada ou embutida.

Registre cada sentido em uso separadamente já aqui — isso prepara o teste de estabilidade.

---

## II. Teste de estabilidade

Para cada conceito-chave, verifique se o sentido se mantém constante em todas as ocorrências. Padrões a caçar:

- **Equívoco:** o termo muda de sentido entre duas ocorrências, e o argumento só flui se os sentidos forem tratados como um. É o defeito conceitual mais letal, porque a validade aparente repousa na constância da palavra.
- **Deslizamento semântico:** a mudança não é abrupta, mas gradual — o sentido migra ao longo do texto, de modo que início e fim usam o conceito de formas incompatíveis sem que nenhuma passagem isolada pareça culpada.
- **Anfibologia:** a ambiguidade não está no termo, mas na construção que o cerca, permitindo duas leituras.
- **Vaguidade operante:** o termo é vago (fronteira indefinida) e o argumento explora essa vaguidade, aplicando-o a casos que uma definição precisa excluiria.

Para cada padrão encontrado, indique as ocorrências envolvidas e mostre como o argumento depende da confusão. Se um conceito for estável, diga-o — estabilidade é resultado, não ausência de resultado.

---

## III. Teste de definição

Examine as definições que o texto oferece ou pressupõe. Classifique cada uma e sinalize as patológicas:

- **Estipulativa** (o autor fixa um sentido para os fins do texto): legítima, desde que respeitada depois. Sinalize se o autor estipula e em seguida viola a própria estipulação.
- **Lexical** (reporta o uso corrente): sinalize se o autor a apresenta como óbvia quando o uso é de fato disputado.
- **Persuasiva:** uma definição que embute carga valorativa sob aparência de neutralidade, de modo que aceitar a definição já é aceitar a conclusão. Formato típico: "verdadeiro X é Y" (onde Y é o que o autor quer provar). É o defeito central a caçar aqui.
- **Circular:** o definiens contém o definiendum, ou a definição pressupõe o que deveria esclarecer.
- **Conceito essencialmente contestado:** conceitos como justiça, liberdade, mérito, civilização, democracia, natural, cujo próprio critério de aplicação é objeto de disputa legítima. Sinalize quando o texto trata um desses como unívoco e pré-decidido, importando para dentro do argumento uma resolução que precisaria ser defendida.

Emita ao final o veredicto deste teste: as definições são honestas (**passa**) ou uma ou mais fazem o trabalho que caberia à evidência (**falha**).

---

## IV. Veredicto integrado

Um parágrafo. Não mais que oito sentenças. Articula os três testes num juízo único sobre a saúde conceitual do texto.

Estrutura interna do parágrafo:

1. Uma sentença curta e afirmativa: o juízo central.
2. Uma a três sentenças de sustentação: como cada teste contribui.
3. Uma sentença aforística de fechamento.

O parágrafo não repete literalmente as seções anteriores; articula como se relacionam — com frequência, um deslizamento (seção II) é *possibilitado* por uma definição persuasiva (seção III), e o veredicto mostra esse encadeamento.

**Restrição diagnóstica.** O veredicto descreve o que o vocabulário do texto é, não o que poderia ser. Identifica onde um conceito escorrega ou uma definição rouba a conclusão; não sugere a definição correta nem reescreve o termo. A linguagem é descritiva, não corretiva.

**Quando os conceitos se sustentam.** Nem todo texto falha. Quando os conceitos-chave são estáveis e as definições honestas, o veredicto declara-o com o mesmo rigor com que apontaria um equívoco, e diz por quê. Não fabrique deslizamento onde há apenas uso consistente de um termo legitimamente rico.

---

## Exemplo completo

Este exemplo mostra o fluxo inteiro das quatro seções sobre um texto curto. Serve de âncora de calibração — tom, profundidade e extensão esperados. Não o copie; use-o como referência de padrão.

**Texto analisado:**

> "O que é natural é bom para o ser humano. A agricultura orgânica produz alimentos naturais, sem interferência artificial. Logo, o orgânico é o melhor para a nossa saúde — afinal, voltar ao natural é voltar ao que a evolução nos preparou para comer."

---

**I. Mapa conceitual**

- **Termo:** *natural* (conceito nuclear — carrega todo o peso). Aparece com três sentidos em uso:
  - u1 (axiológico): "o que é bom / desejável por si". Carga valorativa positiva, embutida.
  - u2 (produtivo): "produzido sem interferência industrial/sintética". Carga aparentemente neutra.
  - u3 (evolutivo): "aquilo a que a espécie se adaptou ancestralmente". Carga neutra-descritiva.
- **Termo:** *artificial* — oposto implícito de u2, que herda a carga negativa gerada por u1.
- **Termo:** *melhor para a saúde* — conceito-alvo, o que a conclusão afirma.

**II. Teste de estabilidade**

**Equívoco** sobre *natural*, envolvendo u1, u2 e u3. O argumento só flui se os três forem o mesmo conceito: a premissa valorativa (u1) empresta seu "bom" ao sentido produtivo (u2, o orgânico) e ao sentido evolutivo (u3), como se estabelecer que o orgânico é "natural-u2" bastasse para herdar o "bom" de "natural-u1". São três conceitos distintos sob um único significante. Há ainda **deslizamento semântico** no desfecho: a migração u2 → u3 ("sem interferência artificial" para "o que a evolução preparou") é gradual e nenhuma cláusula isolada parece culpada, mas início e fim usam *natural* de formas incompatíveis.

**III. Teste de definição**

A primeira frase — "o que é natural é bom" — não é uma premissa empírica, é uma **definição persuasiva** de *natural*: fixa a carga valorativa dentro do conceito, de modo que, uma vez aceita, a conclusão já está contratada. *Natural* é também um **conceito essencialmente contestado** — não há critério único e pacífico do que conta como natural — tratado aqui como unívoco e óbvio. Veredicto do teste: **falha**; a definição inicial faz o trabalho que caberia à evidência sobre saúde.

**IV. Veredicto integrado**

O texto é uma cadeia de equívocos sobre uma só palavra. A aparência de argumento vem da constância do significante *natural*, não de um conceito estável: três sentidos — valorativo, produtivo e evolutivo — são costurados como se fossem um, e a definição persuasiva de abertura injeta o "bom" que os outros dois sentidos depois colhem sem pagar. O teste de estabilidade expõe o equívoco; o teste de definição mostra de onde ele foi autorizado. Onde há uma palavra estável, há três conceitos instáveis.

---

## Casos especiais

**Texto sem conceitos disputados:** se os termos-chave forem técnicos, unívocos e estáveis (um texto de matemática, um manual), diga que o texto não oferece superfície para auditoria conceitual e pare. Não fabrique disputa onde não há.

**Texto do próprio usuário (auto-auditoria):** mesmo rigor de um texto de terceiros. A familiaridade com o autor não suaviza o veredicto.

**Termo legitimamente rico (não equívoco):** um conceito pode ter várias dimensões sem que isso seja defeito — o defeito é usá-las de forma inconsistente *dentro do mesmo argumento*. Distinga riqueza de deslizamento: riqueza é o conceito operando com todas as dimensões declaradas; deslizamento é trocá-las de sentido sem aviso para colher uma conclusão.

**Texto longo (mais de 2.000 palavras):** audite os dois ou três conceitos que sustentam o argumento principal. Não faça o mapa de todo termo abstrato do texto — isso desfoca o veredicto.

---

## O que esta skill não faz

- Não avalia validade lógico-formal nem estrutura inferencial (use `debate-logic-analyzer`).
- Não faz o teste do Mito do Dado — naturalização de evidência é problema epistêmico, não conceitual.
- Não revisa estilo — precisão conceitual não é elegância de prosa.
- Não faz checagem factual.
- Não emite juízo político ou ideológico sobre as conclusões — apenas sobre a estabilidade e a honestidade dos conceitos.
- Não sugere a definição correta nem reescreve os termos. Diagnóstico, não conselho.
