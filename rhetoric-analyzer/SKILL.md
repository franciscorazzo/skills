---
name: rhetoric-analyzer
description: Análise retórica de textos argumentativos — colunas, ensaios, discursos, polêmicas, posts longos, transcrições, e também rascunhos próprios antes de publicar. Responde a uma pergunta que a lógica formal ignora: como o texto persuade, para além das razões que oferece? Executa três análises (meios de persuasão ethos/pathos/logos; enquadramento e esquemas argumentativos à la Walton, com suas perguntas críticas; táticas dialéticas) e fecha com veredicto integrado. Use SEMPRE que o usuário pedir para "analisar a retórica", "ver como o texto persuade", "mapear os apelos", "analisar o enquadramento", "ver as táticas retóricas", "identificar ethos/pathos/logos" ou similar. Use também quando o usuário colar discurso ou texto de terceiros e pedir para desmontar a persuasão. Não use para validade lógico-formal (skill `debate-logic-analyzer`), para auditoria de conceitos (skill `concept-auditor`), nem para revisão estilística.

---

# Rhetoric Analyzer

Skill de análise retórica de textos argumentativos. Onde a análise lógica pergunta se a inferência vale e a auditoria conceitual pergunta se os termos se mantêm, esta pergunta **como o texto busca adesão** — por que meios ele persuade, para além das razões que declara. Cobre três análises e uma síntese final. Produz prosa estruturada no chat, sem geração de arquivo.

## Princípio operativo

Persuadir não é falacioso por si. Um texto pode ser formalmente válido e retoricamente pobre, ou logicamente frágil e retoricamente irresistível. O analista descreve a **mecânica da persuasão** — não a condena. O juízo é sobre *como* a adesão é buscada, e sobre onde o trabalho retórico substitui o trabalho argumentativo, não sobre se persuadir é legítimo.

Cada análise responde a uma pergunta distinta:

- **Meios** responde: por quais apelos o texto busca adesão — a autoridade de quem fala, a emoção do auditório, a aparência de razão?
- **Enquadramento** responde: como o texto molda o terreno da disputa, e que esquemas argumentativos opera?
- **Táticas** responde: que movimentos dialéticos o texto executa em relação a um interlocutor, real ou imaginado?

A fronteira a respeitar: esta skill descreve o *trabalho retórico*, não a *validade formal* nem a *estabilidade conceitual*. Que um apelo à autoridade deixe abertas suas perguntas críticas é assunto **desta** skill; que a inferência seja inválida é da análise lógica; que "liberdade" mude de sentido é da auditoria conceitual.

## Estrutura fixa da saída

A resposta no chat **sempre** segue esta estrutura, com os títulos exatamente como aparecem abaixo:

```
**I. Meios de persuasão (ethos, pathos, logos)**
[análise]

**II. Enquadramento e esquemas argumentativos**
[análise]

**III. Táticas dialéticas**
[análise]

**IV. Veredicto integrado**
[parágrafo de fechamento]
```

Não inclua preâmbulo antes da seção I. Não inclua resumo do texto analisado. Vá direto à primeira análise.

---

## I. Meios de persuasão (ethos, pathos, logos)

Identifique por quais dos três meios clássicos o texto busca adesão, e **como cada um é construído**. Não basta rotular; mostre o dispositivo.

- **Ethos** — a persuasão pela figura de quem fala: credenciais, experiência declarada, tom de autoridade, sinais de pertencimento ao grupo do auditório, humildade estratégica. Pergunte: que autoridade o texto reivindica para si, e como?
- **Pathos** — a persuasão pela emoção do auditório: medo, indignação, esperança, pertencimento, culpa, orgulho. Identifique a emoção mobilizada e o gatilho (uma imagem, uma vítima, um futuro projetado). Pergunte: que emoção o texto acende, e a serviço de qual conclusão?
- **Logos** — a persuasão pela aparência de razão: dados, listas, encadeamento lógico visível, vocabulário técnico, citação de estudos. Aqui o foco não é se o raciocínio é válido (isso é da análise lógica), mas como o texto **produz o efeito de racionalidade**.

Indique o meio dominante e como os três se distribuem. Um texto pode apoiar todo o peso num só (puro pathos) ou alternar para blindar-se (ethos que sustenta o logos frágil).

---

## II. Enquadramento e esquemas argumentativos

Duas operações:

**1. Enquadramento (framing).** Como o texto molda o terreno antes de argumentar? Identifique:
- o que é posto como **pressuposto óbvio**, fora de discussão;
- o que é **excluído** do quadro (alternativas silenciadas, o meio-termo que some);
- as **metáforas estruturantes** (guerra, doença, família, mercado) que organizam a percepção;
- a **escolha lexical** que já carrega o veredicto (chamar de "regime" ou "governo", "aborto" ou "interrupção").

**2. Esquemas argumentativos.** Nomeie os esquemas que o texto opera — no sentido de Walton: formas de argumento presumivelmente aceitáveis, cada uma com **perguntas críticas** que precisariam ser respondidas para sustentá-la. Esquemas típicos:

- **Argumento de autoridade** — perguntas críticas: a fonte é competente no domínio? é imparcial? o que ela de fato afirmou?
- **Argumento das consequências / apelo ao medo** — as consequências projetadas são prováveis? há evidência do nexo?
- **Argumento por exemplo** — o exemplo é representativo? há contraexemplos?
- **Argumento por analogia** — os casos são semelhantes no aspecto relevante?
- **Ad hominem / apelo à emoção / apelo à opinião popular** — quando entram como esquema.

Para cada esquema, indique quais perguntas críticas o texto **deixa abertas**. Um esquema com perguntas críticas em aberto não é falácia por definição — é persuasão que ainda deve o seu lastro. Marcar essa dívida é o trabalho.

---

## III. Táticas dialéticas

Todo texto persuasivo trava um diálogo — com um interlocutor real, ou com um adversário que ele mesmo constrói. Identifique os movimentos:

- **Concessão estratégica** — ceder um ponto menor para ganhar credibilidade no ponto maior.
- **Antecipação de objeção (prolepse)** — levantar a objeção do adversário para desarmá-la antes que ele a faça.
- **Refutação** — e se ela enfrenta a melhor versão da posição contrária ou uma versão enfraquecida (espantalho).
- **Pergunta retórica** — que impõe a resposta em vez de perguntar.
- **Deslocamento do ônus da prova** — exigir que o outro refute, em vez de sustentar a própria tese.
- **Envenenamento do poço / ad hominem circunstancial** — desqualificar de antemão quem discorda (por interesse, ignorância, má-fé).
- **Falso dilema dialético** — reduzir as posições possíveis a duas, uma delas inaceitável.

Ao final, nomeie o **tipo de diálogo** que o texto aparenta travar e o que de fato trava (na tipologia de Walton: diálogo de persuasão, negociação, busca de informação, deliberação, indagação — ou disputa erística, em que a vitória sobre o outro substitui a busca conjunta). O descompasso entre o diálogo aparente e o real costuma ser o achado central.

---

## IV. Veredicto integrado

Um parágrafo. Não mais que oito sentenças. Articula as três análises num perfil retórico único.

Estrutura interna do parágrafo:

1. Uma sentença curta e afirmativa: como o texto, no essencial, busca a adesão.
2. Uma a três sentenças de sustentação: como cada análise contribui para esse perfil.
3. Uma sentença aforística de fechamento.

O parágrafo articula como os três se relacionam — com frequência, um enquadramento (seção II) prepara o terreno para um apelo emocional (seção I) que uma tática dialética (seção III) protege da objeção. Mostre o encadeamento.

**Restrição diagnóstica.** O veredicto descreve como o texto persuade, não como deveria. Aponta onde a persuasão faz o trabalho que caberia ao argumento; não prescreve retórica melhor nem reescreve. Descrever um apelo ao medo não é condená-lo — é identificá-lo. A linguagem é analítica, não moralizante.

**Quando a retórica serve ao argumento.** Nem todo texto persuasivo é manipulador. Quando os meios de persuasão acompanham razões que os sustentam — o ethos é pertinente, o pathos é proporcional ao que está em jogo, os esquemas respondem às suas perguntas críticas —, o veredicto o reconhece. Retórica honesta é aquela cujo efeito persuasivo não sobrevive à retirada das razões. Não trate todo apelo como truque.

---

## Exemplo completo

Este exemplo mostra o fluxo inteiro das quatro seções sobre um texto curto. Serve de âncora de calibração — tom, profundidade e extensão esperados. Não o copie; use-o como referência de padrão.

**Texto analisado:**

> "Como médico com trinta anos de plantão, digo a vocês: se não reformarmos o sistema agora, são nossos filhos que herdarão os hospitais em ruínas. Os especialistas são unânimes. Quem prega o adiamento ou não leu os números, ou tem algum interesse em que nada mude."

---

**I. Meios de persuasão (ethos, pathos, logos)**

- **Ethos** (dominante na abertura): "médico com trinta anos de plantão" — a autoridade profissional e a experiência de linha de frente são postas antes de qualquer razão, para que o que segue chegue já credenciado.
- **Pathos** (dominante no centro): "são nossos filhos que herdarão os hospitais em ruínas" — mobiliza medo e afeto parental, projetando um futuro catastrófico. O gatilho é a vítima futura, não um dado presente.
- **Logos** (auxiliar): "os especialistas são unânimes" — produz efeito de racionalidade por consenso, sem apresentar nenhum número apesar de invocá-los.

O peso está em ethos + pathos; o logos é gesto, não substância.

**II. Enquadramento e esquemas argumentativos**

*Enquadramento:* a questão é moldada como **dilema temporal** — "reformar agora" ou "ruína" —, e o meio-termo (reforma gradual, reforma diferente) é excluído do quadro. A metáfora estruturante é a da catástrofe herdada.

*Esquemas:*
- **Argumento de autoridade** (o médico; e "os especialistas") — perguntas críticas em aberto: os especialistas são de fato unânimes? são imparciais? o que exatamente afirmaram? Nenhuma é respondida.
- **Argumento das consequências / apelo ao medo** ("hospitais em ruínas") — pergunta crítica em aberto: qual a evidência do nexo entre não-reformar-agora e a ruína projetada?

**III. Táticas dialéticas**

O desfecho executa um **ad hominem circunstancial** combinado com **falso dilema dialético**: quem discorda "ou não leu os números, ou tem interesse" — as duas únicas explicações admitidas para a dissidência são ignorância e má-fé. O movimento **envenena o poço** contra qualquer objeção antes que ela seja formulada e **desloca o ônus da prova** para o opositor. O texto aparenta um **diálogo de persuasão**, mas o tratamento dado ao adversário é **erístico**: a desqualificação de quem discorda substitui o enfrentamento do que ele diria.

**IV. Veredicto integrado**

O texto busca adesão pela combinação de autoridade e medo, e a blinda fechando a saída para a discordância. O ethos credencia, o pathos pressiona, e a tática final converte todo dissenso em ignorância ou interesse — de modo que discordar tem custo antes de ter argumento. Os esquemas invocados devem todo o seu lastro: a unanimidade é afirmada, nunca mostrada. É uma peça eficaz precisamente onde é dialeticamente fechada: persuade tornando caro pensar o contrário.

---

## Casos especiais

**Texto sem intenção persuasiva:** se o material for puramente expositivo, informativo ou técnico, sem busca de adesão, diga que não há superfície retórica a analisar e pare. Não invente retórica onde há relato.

**Texto do próprio usuário (auto-auditoria):** mesmo rigor de um texto de terceiros. A familiaridade com o autor não abranda a análise.

**Discurso ou transcrição de fala:** atente para os recursos próprios da oralidade — repetição, clímax, apóstrofe, mudança de ritmo — que no texto escrito seriam sublinhados. Marque-os quando fizerem trabalho persuasivo.

**Retórica honesta:** quando os meios acompanham razões que os sustentam, diga-o com o mesmo rigor com que apontaria manipulação. O perfil retórico de um texto sólido é um achado, não uma acusação.

**Texto longo (mais de 2.000 palavras):** analise o dispositivo retórico *dominante* e os dois ou três esquemas que sustentam a persuasão central. Não catalogue cada figura — isso desfoca o veredicto.

---

## O que esta skill não faz

- Não avalia validade lógico-formal nem estrutura inferencial (use `debate-logic-analyzer`).
- Não audita a estabilidade dos conceitos (use `concept-auditor`).
- Não faz o teste do Mito do Dado.
- Não revisa estilo — retórica não é ornamento de prosa, é estratégia de adesão.
- Não faz checagem factual.
- Não emite juízo moral sobre persuadir. Descreve a mecânica; a condenação de um recurso é do leitor, não do analista.
- Não sugere retórica melhor nem reescreve o texto. Diagnóstico, não conselho.
