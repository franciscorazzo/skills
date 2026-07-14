---
name: steelman
description: Reconstrução da posição adversária na sua forma mais forte, para testar se um texto polêmico a enfrenta ou ataca um espantalho. Ao contrário das skills de auditoria, esta não apenas diagnostica — ela constrói: dado um texto que critica ou se opõe a uma posição, reconstrói a versão mais forte e mais caridosa dessa posição e confronta o argumento do texto com ela. Serve também de red-team: dada a tese do próprio autor, produz a objeção mais forte contra ela. Executa quatro passos (posição-alvo, reconstrução forte, confronto, veredicto). Use SEMPRE que o usuário pedir para "fazer o steelman", "reconstruir o argumento contrário", "ver a versão mais forte da posição adversária", "checar se estou atacando um espantalho", "bancar o advogado do diabo", "qual a objeção mais forte à minha tese" ou similar. Não use para validade lógico-formal (skill `debate-logic-analyzer`), auditoria de conceitos (skill `concept-auditor`), nem análise retórica (skill `rhetoric-analyzer`).

---

# Steelman

Skill de reconstrução caridosa de posições. As skills de auditoria descrevem o que um texto é; esta produz o que falta ao texto: a versão mais forte daquilo que ele combate. O objetivo é uma polêmica honesta — a que derrota o melhor adversário, não o mais conveniente. Produz prosa estruturada no chat, sem geração de arquivo.

## Princípio operativo

O espantalho (*straw man*) vence uma versão enfraquecida do oponente e declara vitória. O steelman faz o oposto: constrói a versão mais forte, mais bem-defendida e mais caridosa da posição contrária — e só então a enfrenta. A regra, na formulação de Rapoport, é reexpressar a posição do adversário com tal força e fidelidade que ele diria "eu não saberia dizer melhor".

Dois limites disciplinam a reconstrução:

- **Fidelidade.** O steelman é a melhor versão *daquela* posição, não uma tese diferente e mais defensável posta no lugar. Trocar a tese do oponente por outra que ele não sustentaria não é caridade — é evasão. Reconstrua o mais forte que o alvo *de fato* comportaria.
- **Neutralidade.** Reconstruir uma posição na forma forte não é endossá-la. O analista não toma partido; daria o mesmo tratamento à posição oposta. A força da reconstrução é um serviço à honestidade do debate, não uma adesão.

A skill opera em dois modos, com a mesma mecânica:

- **Auditoria de caridade** — o texto critica uma posição; a skill reconstrói essa posição forte e verifica se a crítica a atinge.
- **Red-team** — o texto sustenta uma tese; a skill reconstrói a oposição mais forte a ela e testa se a tese resiste.

## Estrutura fixa da saída

A resposta no chat **sempre** segue esta estrutura, com os títulos exatamente como aparecem abaixo:

```
**I. Posição-alvo**
[como o texto representa a posição que ataca ou defende]

**II. Reconstrução forte (steelman)**
[a melhor versão da posição adversária]

**III. Confronto**
[o argumento do texto sobrevive ao steelman?]

**IV. Veredicto integrado**
[parágrafo de fechamento]
```

Não inclua preâmbulo antes da seção I. Vá direto à posição-alvo.

## I. Posição-alvo

Identifique a posição que o texto combate (modo auditoria) ou sustenta (modo red-team), e registre **como o texto a representa** — nas palavras e no enquadramento do próprio texto. Cite ou parafraseie fielmente a versão que o texto oferece do adversário, incluindo as atribuições ("os que defendem X acham que…"). Esta seção é descritiva: mostra o alvo tal como o texto o desenhou, para que o passo seguinte possa medir a distância entre esse desenho e a posição mais forte.

## II. Reconstrução forte (steelman)

Reconstrua a versão mais forte da posição-alvo. Não a versão do texto — a melhor versão disponível:

- **As premissas mais caridosas** que um defensor competente sustentaria, no lugar das mais frágeis que o texto atribuiu.
- **Os melhores argumentos e evidências** a favor da posição, incluindo autores ou correntes que a defendem de forma séria (nomeie-os quando existirem e você os conhecer).
- **As distinções que o texto apagou** — qualificações, condições, versões moderadas que evitam as objeções óbvias.

Duas exigências:

- Mantenha a **fidelidade**: a reconstrução tem de ser reconhecível como a mesma posição, mais bem defendida — não uma tese nova.
- Respeite os **limites do que você sabe**: se a posição depende de fatos que você não domina, reconstrua o esqueleto do argumento e sinalize onde a força depende de evidência que precisaria ser verificada. Não fabrique dados nem autores.

## III. Confronto

Confronte o argumento do texto com o steelman, não com a versão-alvo original. Três perguntas:

1. **Quais objeções do texto ainda atingem a versão forte?** Estas são as objeções reais — as que sobrevivem à caridade e merecem resposta.
2. **Quais objeções só funcionavam contra o espantalho?** Aquelas que dependiam da versão enfraquecida e se dissolvem diante do steelman.
3. **O que a crítica precisaria fazer para atingir o steelman?** Indique o ponto de contato real — onde o debate honesto de fato acontece —, sem escrever a crítica pelo autor.

## IV. Veredicto integrado

Um parágrafo. Não mais que oito sentenças. Um juízo único: o argumento do texto sobrevive à versão mais forte da posição contrária, ou vence apenas um espantalho?

Estrutura interna:

1. Uma sentença curta: o argumento resiste ao steelman ou não.
2. Uma a três sentenças: o que a reconstrução revelou — a distância entre o alvo desenhado e o alvo forte, e o que resta da crítica.
3. Uma sentença aforística de fechamento.

**Restrição de fidelidade e neutralidade.** O veredicto julga se a crítica enfrenta o melhor adversário — não se a posição reconstruída é verdadeira. Não conclua que a posição-alvo é correta só porque a crítica falhou contra ela; um espantalho derrotado não torna verdadeira a tese oposta. E não reescreva o texto do autor: aponte onde a crítica erra o alvo, sem redigir a crítica corrigida.

**Quando o texto já enfrenta o steelman.** Nem todo crítico ataca um espantalho. Quando o texto já se dirige à versão forte da posição contrária — quando as objeções sobrevivem à reconstrução caridosa —, o veredicto o reconhece com o mesmo rigor com que exporia um espantalho. Enfrentar o melhor adversário é o mérito máximo de uma polêmica; registre-o quando estiver presente.

## Exemplo completo

Este exemplo mostra o fluxo inteiro das quatro seções sobre um texto curto. Serve de âncora de calibração — tom, profundidade e extensão esperados. Não o copie; use-o como referência de padrão.

**Texto analisado:**

> "Os que defendem a renda básica universal acham que o Estado deve simplesmente dar dinheiro a todos, trabalhe a pessoa ou não. É a receita para uma nação de preguiçosos vivendo às custas alheias: ninguém teria incentivo para trabalhar se recebesse de graça."

---

**I. Posição-alvo**

O texto combate a **renda básica universal (RBU)** e a representa assim: o Estado "simplesmente dá dinheiro a todos", incondicionalmente; a consequência atribuída é o colapso do incentivo ao trabalho ("ninguém teria incentivo"); e a motivação imputada aos defensores é sustentar quem não quer trabalhar ("preguiçosos vivendo às custas alheias"). É uma posição desenhada como transferência incondicional sem contrapartida nem racionalidade econômica.

**II. Reconstrução forte (steelman)**

A versão forte da RBU não é "dinheiro para preguiçosos". Defensores sérios — Philippe Van Parijs à esquerda, e uma linhagem liberal via imposto de renda negativo em Milton Friedman à direita — sustentam três coisas que o texto omite:

1. A RBU é um **piso incondicional que substitui** a colcha fragmentada e cara de programas assistenciais, reduzindo burocracia e as "armadilhas da pobreza" (em que ganhar um pouco mais faz perder o benefício).
2. A evidência dos **experimentos-piloto** (de Manitoba a Finlândia e Quênia) não mostra colapso da oferta de trabalho: os efeitos sobre horas trabalhadas são pequenos e concentrados em cuidadores e estudantes.
3. Há um **argumento normativo de liberdade real** — o poder de recusar trabalho degradante — que independe de juízo sobre o mérito individual.

A tese forte é sobre incondicionalidade como eficiência e liberdade, não sobre abolir o trabalho.

**III. Confronto**

- *Objeção que só atinge o espantalho:* "ninguém teria incentivo" — contrariada pela própria evidência empírica que o defensor invoca; funcionava apenas contra a caricatura de que a RBU aboliria o trabalho.
- *Atribuição que se dissolve:* "preguiçosos vivendo às custas alheias" — o argumento forte é estrutural (eficiência do piso, liberdade), não um convite à ociosidade.
- *Objeção real que sobrevive:* há uma questão legítima sobre a **magnitude** do efeito de desincentivo e sobre o **custo fiscal** de um piso universal. O steelman a responde apenas em parte. É aqui — e só aqui — que a crítica honesta teria de operar.

**IV. Veredicto integrado**

A crítica não sobrevive ao steelman: ela derrota uma versão da RBU que nenhum defensor competente sustenta. Entre o alvo desenhado — transferência a preguiçosos que colapsa o trabalho — e o alvo forte — piso incondicional com lastro empírico e argumento de liberdade — há a distância exata de um espantalho. O único ponto em que o texto tocaria o adversário real, a magnitude do desincentivo e o custo, sequer é enunciado. Vencer a caricatura deixou a posição forte intacta.

## Casos especiais

**Texto sem posição adversária clara:** se o material não critica nem se opõe a nenhuma posição identificável (é puramente expositivo ou já é ele mesmo a defesa de uma tese sem alvo), diga que não há posição a reconstruir e, se for o caso, ofereça o modo red-team sobre a tese do próprio texto.

**Red-team da tese do próprio usuário:** quando o pedido é testar a própria tese, a "posição-alvo" é a tese do usuário e o steelman é a **melhor objeção** a ela. Mesmo rigor; a familiaridade com o autor não abranda a objeção.

**Posição que você não conhece o suficiente:** reconstrua o esqueleto do argumento mais forte que a posição comporta e sinalize explicitamente onde a força dependeria de evidência ou autores que você não pode confirmar. Não invente defensores nem dados para robustecer o steelman.

**Posições indefensáveis:** algumas posições não têm versão forte (afirmações factualmente falsas, teses incoerentes). Nesse caso, diga que a reconstrução caridosa esbarra num limite e por quê — o steelman honesto reconhece quando não há aço a forjar. Não fabrique uma defesa respeitável para o que não a tem.

## O que esta skill não faz

- Não avalia validade lógico-formal (use `debate-logic-analyzer`), não audita conceitos (use `concept-auditor`), não analisa retórica (use `rhetoric-analyzer`).
- Não endossa a posição que reconstrói. Steelman é serviço à honestidade do debate, não adesão.
- Não conclui que a posição-alvo é verdadeira porque a crítica falhou. Um espantalho derrotado não prova a tese oposta.
- Não reescreve o texto do autor nem redige a crítica corrigida. Aponta onde a crítica erra o alvo; refazê-la é tarefa separada.
- Não faz checagem factual, embora sinalize quando a força do steelman depende de fatos a verificar.
