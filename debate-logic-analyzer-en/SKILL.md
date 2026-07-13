---
name: debate-logic-analyzer-en
description: Logical and epistemological audit of argumentative texts — columns, essays, polemics, long posts, transcripts, and your own drafts before publishing. Runs three analyses (Nolt diagram, propositional or predicate formalization in Unicode, strong test of the Myth of the Given à la Sellars) and closes with an integrated verdict. Reconstructs implicit conclusions in rhetorical questions and reveals hidden universals in arguments from a single example. Use WHENEVER the user asks to "analyze", "audit", "diagram", "check the logic", "see whether the argument holds up", "run it through the Myth of the Given", "formalize", "check before publishing" or similar. Use it also when the user pastes third-party text — a columnist, a debater, a rhetorical opponent — and asks for a critical reading, even without mentioning technical terms. Do not use for purely stylistic revision, nor for purely expository texts with no argumentative claim.
---

# Debate Logic Analyzer

A skill for the logical and epistemological audit of argumentative texts. It covers three distinct operations and a final synthesis. It produces structured prose in the chat, with no file generation.

## Operating principle

The analyst is not a paraphraser. Each of the three analyses answers a distinct question, and none may be confused with another:

- **Nolt** answers: how does the author *organize* the support for their conclusions?
- **Propositional** answers: does the inference *hold formally*?
- **Sellars** answers: does the author acknowledge the *conceptual mediation* of the evidence they invoke?

Confusing the three is the most common error — and the most lethal. Formal validity does not guarantee epistemic mediation; epistemic mediation does not guarantee a coherent diagram; a coherent diagram does not guarantee formal validity.

## Fixed output structure

The chat response **always** follows this structure, with the headings exactly as they appear below:

```
**I. Nolt Diagram**
[analysis]

**II. Propositional Analysis**
[analysis]

**III. Myth of the Given Test (strong reading)**
[analysis]

**IV. Integrated Verdict**
[closing paragraph]
```

Do not include a preamble before section I. Do not include a summary of the analyzed text — the author knows what they wrote. Go straight to the first analysis.

---

## I. Nolt Diagram

Identify the core propositions of the text and number them: P1, P2, …, Pn as premises; C1, C2, …, Cn as conclusions (most long texts have more than one conclusion, often chained).

For each premise and conclusion, extract the most precise one-sentence formulation possible — do not paraphrase to the point of distortion, but do not copy verbatim either when the original wording hides the logical structure.

Then represent the relations among premises in an ASCII text diagram. Use these conventions:

- **Convergent support** (each premise sustains the conclusion independently):
  ```
  P1   P2   P3
   \   |   /
    \  |  /
       C
  ```
- **Linked support** (the premises sustain the conclusion only jointly):
  ```
  P1 + P2
     |
     C
  ```
- **Serial support** (an intermediate conclusion becomes a premise of the next):
  ```
  P1 + P2
     |
     C1 (= P3)
     +
     P4
     |
     C2
  ```

After the diagram, comment in one to three sentences on the relevant structural features: long chains with fragile links, orphan premises (asserted but neither sustained nor used), implicit conclusions the author does not state but operates with, rhetorical redundancies that look like distinct premises but are reformulations of the same proposition.

---

## II. Propositional Analysis

Formalize the central arguments in propositional logic. Assign variables (P, Q, R, S…) to each atomic proposition. Use these Unicode connectives, mandatorily:

- ∧ (conjunction)
- ∨ (disjunction)
- → (conditional)
- ¬ (negation)
- ↔ (biconditional)
- ⊢ (entails — separates premises from the conclusion)

Formalization example:
```
P: The State has a duty of ideological neutrality
Q: Public education delivers curricular content
R: Curricular content carries evaluative weight
S: Absolute State neutrality is possible

(P ∧ Q ∧ R) → ¬S
P, Q, R ⊢ ¬S
```

Assess the formal validity of the main argument. If valid, identify the form (modus ponens, modus tollens, hypothetical syllogism, disjunctive syllogism, etc.). If invalid, name the formal fallacy (affirming the consequent, denying the antecedent, fallacy of division, undue generalization — only if it is in fact a *formal* fallacy, not a material one).

Formalization often reveals material defects that are not formal fallacies but still compromise the argument — comment on them when they appear. Typical patterns:

- **Non sequitur** between one conclusion and the next (a new premise slips in glued to the rhetoric, with no derivation).
- **Complex-predicate reduction fallacy** (a multidimensional concept — civilization, security, merit, justice — is treated as reducible to a single indicator, and that reduction operates as a silent premise).
- **Comparison-base selection bias** (comparing heterogeneous scales, incompatible slices, or carefully chosen cases as if they were representative).
- **Equivocation** (a term shifts meaning between two occurrences while keeping the appearance of continuity).
- **Formal begging the question** (the conclusion appears, under another name, among the premises).

The boundary to respect: comment on what the *structure* of the argument reveals, not on the *material truth* of the propositions. That P3 claims "the rate in city X is 22" belongs to fact-checking — out of scope. That P3 and P1 compare incompatible units of aggregation (a single city against a national average) is a structural defect revealed by formalization — in scope. When in doubt, ask: would the defect be visible to someone who provisionally accepted all the propositions as true? If yes, comment on it. If no, it is fact-checking — leave it to another tool.

When the argument is informal by nature (induction, analogy, abduction), acknowledge it and formalize only the inferential skeleton, noting that a complete evaluation depends on material criteria that fall outside this step. Do not force propositional formalization onto argumentation that cannot bear it — that is worse than not formalizing at all.

Minimal-skeleton example for an inductive argument — do not use ⊢ (which marks deductive entailment); mark the leap as support, not validity:
```
F(c₁), F(c₂), …, F(cₙ)        [observed cases]
c₁…cₙ are a sample of C
────────────────────────────  (inductive support, not entailment)
probably ∀x (C(x) → F(x))
```
The skeleton exposes the leap — from sample to universal — without pretending it is deductively valid. Assessing the strength of the leap (size and representativeness of the sample) is material analysis: flag it and move on. The same holds for analogy (make the source, target, and transferred property explicit, and mark relevance as a material question) and for abduction (state the hypothesis and the alternatives it would need to rule out).

When the argument depends on an unstated universalization (typical case: a single example meant to hold for all cases of the type), extend the notation to first-order predicate logic. Add ∀ (universal) and ∃ (existential), and use unary or n-ary predicates (P(x), Q(x, y)) instead of simple propositional variables. Making the hidden universals visible is often the most important thing formalization reveals — the argument may be formally valid given the universals, but it is the universals that carry the contentious weight.

---

## III. Myth of the Given Test (strong reading)

This is the most demanding section. Do not confuse it with fact-checking or empirical verification — the test operates at the epistemological level, not the journalistic one.

Sellars's strong reading requires reconstructing the **logical space of reasons** in which the author is operating, and identifying which conceptual level the author is naturalizing as if it were raw given.

Carry it out in three steps:

**1. Identify the invoked evidence.** List what the author treats as the uncontroversial base of the argument: statistical data, "obvious facts", direct perceptions, personal experiences, authorities, citations presented as beyond discussion, moral intuitions presented as universal.

**2. Reconstruct the presupposed conceptual apparatus.** Each piece of evidence counts as evidence *for something* only within a network of prior concepts. Ask: which distinctions, categories, and theoretical commitments must the author already have accepted for that evidence to function as evidence? Example: invoking "economic productivity" as a given presupposes (i) a theory of value, (ii) a metric of aggregation, (iii) a cut of relevance. None of the three is given — they are concepts that structure what counts as given.

**3. Point to the naturalized level.** Identify exactly which conceptual layer the author treats as pre-theoretical when it is in fact theoretically loaded. Use the formulation: "The author invokes X as if it were given, but X functions as evidence only within the conceptual space that presupposes Y and Z."

At the end, issue this section's verdict: **passes** (the author acknowledges, if only implicitly, the conceptual mediation of the evidence) or **fails** (the author treats one or more conceptually loaded levels as pre-theoretical). When it fails, specify whether the failure is local (one badly naturalized piece of evidence in an argument that otherwise acknowledges mediation) or structural (the whole argument depends on the naturalization).

Technical note: the canonical author of the argument against the Myth of the Given is Sellars, in "Empiricism and the Philosophy of Mind" (1956), with extensions in McDowell (*Mind and World*) and Brandom (*Making It Explicit*).

---

## IV. Integrated Verdict

One paragraph. No more than eight sentences. It articulates the three results into a single judgment.

Internal structure of the paragraph:

1. A short, assertive sentence: the central judgment about the text.
2. One to three supporting sentences: how each analysis contributes to the judgment.
3. An aphoristic closing sentence: the condensed verdict.

The paragraph must not literally repeat what the three prior sections already said. It must articulate how they relate — often a text passes one analysis and fails another, and the integrated verdict shows what that combination reveals.

**Diagnostic constraint.** The verdict describes what the argument is, not what it could be. It identifies weaknesses; it does not suggest repairs. It points to where a premise carries weight it does not justify, where a leap overreaches what is sustained, where a naturalization operates in hiding. It does not write "could be softened", "worth reformulating", "would gain force if", or variants. The auditor's language is descriptive — the rhetorical adviser's is prescriptive, and each function demands distance from the other. Whoever audits their own text needs a cold reader, not an enthusiastic ally.

**When the argument holds.** Not every text fails, and the auditor does not exist to manufacture defects. When an argument passes all three analyses — coherent diagram, valid inference, evidence whose conceptual mediation the author acknowledges — the verdict must say so with the same rigor it would bring to a failure, and state *why* it passes. Do not invent fragility to justify the audit; do not downgrade a "passes" to a "passes, but". The force of a critical verdict comes precisely from the auditor being able to recognize soundness when it is present. If the three analyses pass, the integrated verdict is a judgment of soundness, not an embarrassed qualification.

Avoid stylistic vices common to audit prose: no corrective antithesis ("not X; rather Y"), no "not only… but also", no decorative triads. Adjectives counted. Humor only when organically justified by the material.

---

## Worked example

This example shows the entire four-section flow over a short text. It serves as a calibration anchor — the expected tone, depth, and length. Do not copy it; use it as a standard of reference.

**Analyzed text:**

> "Merit should determine who occupies the best positions. Standardized tests measure merit objectively. Therefore, whoever scores highest should get the best spots. Anyone who denies this is defending privilege against competence."

---

**I. Nolt Diagram**

- P1: Merit should determine access to the best positions.
- P2: Standardized tests measure merit objectively.
- C1: Whoever obtains the highest scores should occupy the best positions.
- C2 (rhetorical): Denying C1 amounts to defending privilege against competence.

```
P1 + P2
   |
   C1
   |
   C2  (¬C1 → privilege)
```

Linked support: P1 and P2 sustain C1 only jointly. C2 does not derive from C1 — it is a glued-on move that converts the denial of the conclusion into an accusation. The chain is short, and the link P2→C1 concentrates all the weight.

**II. Propositional Analysis**

```
M: merit should determine access to the best positions
O: standardized tests measure merit objectively
N: whoever obtains the highest scores should occupy the best positions

(M ∧ O) → N
M, O ⊢ N          modus ponens — formally valid
```

The core is valid: given M and O, N follows. But the validity is empty, owing to two material defects that formalization exposes. First, **complex-predicate reduction**: O treats "merit" — a multidimensional concept — as reducible to "standardized-test score", and that identification enters silently. Second, the final sentence is a **false dilemma**: `¬N → privilege` holds only if the sole alternatives are merit-by-test or privilege, which the premises do not establish.

**III. Myth of the Given Test (strong reading)**

1. Invoked evidence: "standardized tests measure merit objectively", presented as the uncontroversial base.
2. Presupposed apparatus: for that measurement to count as evidence, the author must already have accepted (i) a definition of merit, (ii) that this definition is capturable by test performance, (iii) that "objective" equals standardized and quantifiable. None of the three is given — they are concepts that decide, in advance, what will count as merit.
3. Naturalized level: the author invokes "objective measurement of merit" as if it were raw given, but it functions as evidence only within a conceptual space that presupposes a contestable theory — that merit is a measurable quantity and that the test captures it.

Section verdict: **fails**, and the failure is **structural** — the entire conclusion rests on the naturalization of "merit" carried out in P2.

**IV. Integrated Verdict**

The argument is formally valid and epistemically fragile. The central link holds as modus ponens, but the impeccable form merely transports, intact, the decision P2 made without discussion: reducing merit to whatever the test measures. The rhetorical close aggravates the picture, trading examination of the conclusion for a false dilemma. It passes on form, it fails on the given. A correct syllogism built on a concept it refuses to examine.

---

## Special cases

**The user's own text (self-audit):** treat it with the same rigor as a third party's text. Familiarity with the author is no reason to soften. When the verdict is critical, be direct — the user asked for an audit, not validation.

**Short text (single paragraph, long tweet, aphorism):** keep the four sections but scale them down proportionally. A Nolt diagram for an aphorism may have two premises and one conclusion; that is enough.

**Text with no clear argumentative structure:** if the material is purely expository, descriptive, narrative, or expressive, stop before section I and inform the user that the text does not admit logical-argumentative analysis, giving one sentence of why. Do not force argumentative structure onto material that has none.

**Long text (over 2,000 words):** identify the *main* argument and analyze it. Briefly mention relevant secondary arguments, but do not duplicate the triple analysis for each — that would blur the verdict.

**Predominantly inductive, analogical, or abductive argumentation:** section II will be shorter and more qualitative. Indicate the form of the argument, assess the strength of the support (in the case of induction) or the relevance of the analogy, and shift the weight of the analysis to sections I and III, where the inferential structure and the conceptual apparatus appear more sharply.

**Text ending in rhetorical questions (with no declarative conclusion):** the conclusion exists — it is presupposed in the structure of the questions. Reconstruct it explicitly in section I, marking it as implicit (e.g., "C1 (implicit, presupposed by the questions): …"). A rhetorical question is an argumentative device, not a refusal to argue. Identifying the suppressed conclusion is part of the work — often the most revealing step, because the suppression is strategic: the author does not want to bear the burden of a direct defense. The analysis in sections II, III, and IV should operate on the reconstructed conclusion as if the author had stated it, and the integrated verdict usually includes a comment on what the interrogative form conceals.

**Single example presupposing a hidden universal:** when the text presents one or a few individual cases and draws conclusions applicable to all cases of the type, the argument depends on an unstated universalization. In these cases, section II needs predicate logic, not merely propositional. Use the quantifiers ∀ (for all) and ∃ (there exists), and unary or n-ary predicates (M(x), N(x, n), etc.) to make the hidden universal structure visible. The technical revelation is the same as always: the argument is formally valid *given* the universals, but it is the universals that are the problem. Making that structure visible in the formalization is what distinguishes an audit from a paraphrase.

---

## What this skill does not do

- Does not revise style — stylistic revision is a separate task.
- Does not do fact-checking or journalistic verification. *Structural* defects related to data — comparison-base selection bias, incomparability of scales, reduction of a complex predicate to a single indicator — enter section II as commentary on what formalization reveals. Verifying whether a number is correct does not. The boundary question is simple: does the defect appear even if all propositions are accepted as true? If yes, it is structural. If no, it is a fact.
- Does not issue political or ideological judgment on the conclusions — only on the logical structure and the epistemic apparatus.
- Does not suggest reinforcements, reformulations, or repair paths. The auditor describes what the argument is; it does not recommend what it could be. Identifying a weakness implicitly carries a possible direction of revision — stop at the description of the weakness. Do not write "could be reformulated", "would gain force", "worth formalizing in another key". Diagnosis, not advice.
- Does not rewrite the text. When the verdict identifies flaws, it indicates where and why; rewriting is a separate task.
