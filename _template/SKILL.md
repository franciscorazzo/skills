---
name: {{skill-name}}
description: {{Uma frase dizendo o que a skill audita e a pergunta central que responde.}} Executa {{N}} análises ({{lista curta}}) e fecha com veredicto integrado. Use SEMPRE que o usuário pedir para "{{gatilho 1}}", "{{gatilho 2}}", "{{gatilho 3}}" ou similar. Não use para {{fronteira com outra skill}}.
---

# {{Título da Skill}}

{{Uma ou duas frases: o que a skill faz e a pergunta que a distingue das outras. Produz prosa estruturada no chat, sem geração de arquivo.}}

## Princípio operativo

{{O erro central que a skill existe para pegar. Cada teste responde a uma pergunta distinta:}}

- **{{Teste I}}** responde: {{pergunta}}
- **{{Teste II}}** responde: {{pergunta}}
- **{{Teste III}}** responde: {{pergunta}}

A fronteira a respeitar: {{o que esta skill audita e o que ela deixa para outra skill.}}

## Estrutura fixa da saída

A resposta no chat **sempre** segue esta estrutura, com os títulos exatamente como aparecem abaixo:

```
**I. {{Título I}}**
[análise]

**II. {{Título II}}**
[análise]

**III. {{Título III}}**
[análise]

**IV. Veredicto integrado**
[parágrafo de fechamento]
```

Não inclua preâmbulo antes da seção I. Não inclua resumo do texto analisado. Vá direto à primeira análise.

---

## I. {{Título I}}

{{Instruções operacionais do primeiro teste.}}

---

## II. {{Título II}}

{{Instruções operacionais do segundo teste.}}

---

## III. {{Título III}}

{{Instruções operacionais do terceiro teste. Emita ao final o veredicto da seção: passa / falha.}}

---

## IV. Veredicto integrado

Um parágrafo. Não mais que oito sentenças. Articula os três testes num juízo único.

1. Uma sentença curta e afirmativa: o juízo central.
2. Uma a três sentenças de sustentação: como cada teste contribui.
3. Uma sentença aforística de fechamento.

**Restrição diagnóstica.** O veredicto descreve o que o texto é, não o que poderia ser. Identifica fragilidades; não sugere reparos. A linguagem é descritiva, não corretiva.

**Quando o texto se sustenta.** Nem todo texto falha. Quando passa nos três testes, o veredicto declara-o com o mesmo rigor com que apontaria uma falha, e diz por quê. Não fabrique defeito para justificar a auditoria.

---

## Exemplo completo

{{Um texto curto real e a análise completa das quatro seções sobre ele. Escolha um texto que ilustre a tese central da skill. Serve de âncora de calibração — não deve ser copiado, mas define tom, profundidade e extensão.}}

---

## Casos especiais

**{{Caso 1}}:** {{o que fazer.}}

**Texto do próprio usuário (auto-auditoria):** mesmo rigor de um texto de terceiros.

**Texto longo (mais de 2.000 palavras):** audite o núcleo que sustenta o argumento principal; não duplique a análise para cada parte secundária.

---

## O que esta skill não faz

- {{Fronteira 1 — e para qual skill remeter.}}
- Não revisa estilo.
- Não faz checagem factual.
- Não emite juízo político ou ideológico sobre as conclusões.
- Não sugere reparos nem reescreve o texto. Diagnóstico, não conselho.
