---
name: steelman-en
description: Reconstructing the opposing position in its strongest form, to test whether a polemical text confronts it or attacks a straw man. Unlike the audit skills, this one does not merely diagnose — it builds: given a text that criticizes or opposes a position, it reconstructs the strongest and most charitable version of that position and confronts the text's argument with it. It also works as a red-team: given the author's own thesis, it produces the strongest objection to it. Runs four steps (target position, strong reconstruction, confrontation, verdict). Use WHENEVER the user asks to "steelman", "reconstruct the opposing argument", "see the strongest version of the adversary's position", "check whether I'm attacking a straw man", "play devil's advocate", "what's the strongest objection to my thesis" or similar. Do not use for formal-logical validity (skill `debate-logic-analyzer`), concept auditing (skill `concept-auditor`), nor rhetorical analysis (skill `rhetoric-analyzer`).

---

# Steelman

A skill for the charitable reconstruction of positions. The audit skills describe what a text is; this one produces what the text lacks: the strongest version of what it opposes. The aim is honest polemic — the kind that defeats the best adversary, not the most convenient one. It produces structured prose in the chat, with no file generation.

## Operating principle

The straw man defeats a weakened version of the opponent and declares victory. The steelman does the opposite: it builds the strongest, best-defended, most charitable version of the opposing position — and only then confronts it. The rule, in Rapoport's formulation, is to re-express the adversary's position with such force and fidelity that they would say "I couldn't have put it better myself."

Two limits discipline the reconstruction:

- **Fidelity.** The steelman is the best version of *that* position, not a different, more defensible thesis put in its place. Swapping the opponent's thesis for one they would not hold is not charity — it is evasion. Reconstruct the strongest version the target would *actually* bear.
- **Neutrality.** Reconstructing a position in strong form is not endorsing it. The analyst takes no side; it would give the opposing position the same treatment. The strength of the reconstruction is a service to the honesty of the debate, not an allegiance.

The skill operates in two modes, with the same mechanics:

- **Charity audit** — the text criticizes a position; the skill reconstructs that position in strong form and checks whether the criticism reaches it.
- **Red-team** — the text holds a thesis; the skill reconstructs the strongest opposition to it and tests whether the thesis survives.

## Fixed output structure

The chat response **always** follows this structure, with the headings exactly as they appear below:

```
**I. Target position**
[how the text represents the position it attacks or defends]

**II. Strong reconstruction (steelman)**
[the best version of the opposing position]

**III. Confrontation**
[does the text's argument survive the steelman?]

**IV. Integrated Verdict**
[closing paragraph]
```

Do not include a preamble before section I. Go straight to the target position.

## I. Target position

Identify the position the text opposes (audit mode) or holds (red-team mode), and record **how the text represents it** — in the text's own words and framing. Quote or faithfully paraphrase the version the text offers of the adversary, including the attributions ("those who defend X think that…"). This section is descriptive: it shows the target as the text drew it, so the next step can measure the distance between that drawing and the strongest position.

## II. Strong reconstruction (steelman)

Reconstruct the strongest version of the target position. Not the text's version — the best available one:

- **The most charitable premises** a competent defender would hold, in place of the weakest ones the text attributed.
- **The best arguments and evidence** for the position, including authors or currents that defend it seriously (name them when they exist and you know them).
- **The distinctions the text erased** — qualifications, conditions, moderate versions that avoid the obvious objections.

Two requirements:

- Keep **fidelity**: the reconstruction must be recognizable as the same position, better defended — not a new thesis.
- Respect the **limits of what you know**: if the position depends on facts you do not command, reconstruct the skeleton of the argument and flag where its strength depends on evidence that would need verification. Do not fabricate data or authors.

## III. Confrontation

Confront the text's argument with the steelman, not with the original target version. Three questions:

1. **Which of the text's objections still reach the strong version?** These are the real objections — the ones that survive charity and deserve an answer.
2. **Which objections only worked against the straw man?** Those that depended on the weakened version and dissolve before the steelman.
3. **What would the criticism need to do to reach the steelman?** Indicate the real point of contact — where the honest debate actually happens — without writing the criticism for the author.

## IV. Integrated Verdict

One paragraph. No more than eight sentences. A single judgment: does the text's argument survive the strongest version of the opposing position, or does it defeat only a straw man?

Internal structure:

1. A short sentence: the argument resists the steelman or it does not.
2. One to three sentences: what the reconstruction revealed — the distance between the drawn target and the strong target, and what remains of the criticism.
3. An aphoristic closing sentence.

**Fidelity and neutrality constraint.** The verdict judges whether the criticism faces the best adversary — not whether the reconstructed position is true. Do not conclude that the target position is correct just because the criticism failed against it; a defeated straw man does not make the opposing thesis true. And do not rewrite the author's text: point out where the criticism misses the target, without drafting the corrected criticism.

**When the text already faces the steelman.** Not every critic attacks a straw man. When the text already addresses the strong version of the opposing position — when the objections survive the charitable reconstruction — the verdict acknowledges it with the same rigor it would bring to exposing a straw man. Facing the best adversary is the highest merit of a polemic; record it when it is present.

## Worked example

This example shows the entire four-section flow over a short text. It serves as a calibration anchor — the expected tone, depth, and length. Do not copy it; use it as a standard of reference.

**Analyzed text:**

> "Those who defend universal basic income think the State should just hand out money to everyone, whether the person works or not. It is the recipe for a nation of freeloaders living off others: no one would have any incentive to work if they got it for free."

---

**I. Target position**

The text opposes **universal basic income (UBI)** and represents it thus: the State "just hands out money to everyone", unconditionally; the attributed consequence is the collapse of the work incentive ("no one would have any incentive"); and the motive imputed to its defenders is to support those who do not want to work ("freeloaders living off others"). It is a position drawn as an unconditional transfer with no counterpart and no economic rationale.

**II. Strong reconstruction (steelman)**

The strong version of UBI is not "money for freeloaders." Serious defenders — Philippe Van Parijs on the left, and a liberal lineage via the negative income tax in Milton Friedman on the right — hold three things the text omits:

1. UBI is an **unconditional floor that replaces** the fragmented and costly patchwork of welfare programs, cutting bureaucracy and the "poverty traps" (where earning a little more means losing the benefit).
2. The evidence from **pilot experiments** (from Manitoba to Finland and Kenya) shows no collapse of labor supply: effects on hours worked are small and concentrated among caregivers and students.
3. There is a **normative argument from real freedom** — the power to refuse degrading work — that is independent of any judgment about individual merit.

The strong thesis is about unconditionality as efficiency and freedom, not about abolishing work.

**III. Confrontation**

- *Objection that only hits the straw man:* "no one would have any incentive" — contradicted by the very empirical evidence the defender invokes; it worked only against the caricature that UBI would abolish work.
- *Attribution that dissolves:* "freeloaders living off others" — the strong argument is structural (efficiency of the floor, freedom), not an invitation to idleness.
- *Real objection that survives:* there is a legitimate question about the **magnitude** of the disincentive effect and the **fiscal cost** of a universal floor. The steelman answers it only in part. This — and only this — is where honest criticism would have to operate.

**IV. Integrated Verdict**

The criticism does not survive the steelman: it defeats a version of UBI that no competent defender holds. Between the drawn target — a transfer to freeloaders that collapses work — and the strong target — an unconditional floor with empirical grounding and an argument from freedom — lies the exact distance of a straw man. The one point where the text would touch the real adversary, the magnitude of the disincentive and the cost, is not even stated. Defeating the caricature left the strong position intact.

## Special cases

**Text with no clear opposing position:** if the material neither criticizes nor opposes any identifiable position (it is purely expository or is itself the defense of a thesis with no target), say there is no position to reconstruct and, if appropriate, offer the red-team mode on the text's own thesis.

**Red-team of the user's own thesis:** when the request is to test one's own thesis, the "target position" is the user's thesis and the steelman is the **strongest objection** to it. Same rigor; familiarity with the author does not soften the objection.

**A position you do not know well enough:** reconstruct the skeleton of the strongest argument the position can bear and explicitly flag where its strength would depend on evidence or authors you cannot confirm. Do not invent defenders or data to bolster the steelman.

**Indefensible positions:** some positions have no strong version (factually false claims, incoherent theses). In that case, say that charitable reconstruction hits a limit and why — the honest steelman recognizes when there is no steel to forge. Do not fabricate a respectable defense for what has none.

## What this skill does not do

- Does not assess formal-logical validity (use `debate-logic-analyzer`), does not audit concepts (use `concept-auditor`), does not analyze rhetoric (use `rhetoric-analyzer`).
- Does not endorse the position it reconstructs. Steelman is a service to the honesty of the debate, not an allegiance.
- Does not conclude that the target position is true because the criticism failed. A defeated straw man does not prove the opposing thesis.
- Does not rewrite the author's text or draft the corrected criticism. It points out where the criticism misses the target; redoing it is a separate task.
- Does not do fact-checking, though it flags when the strength of the steelman depends on facts to be verified.
