---
name: rhetoric-analyzer-en
description: Rhetorical analysis of argumentative texts — columns, essays, speeches, polemics, long posts, transcripts, and your own drafts before publishing. It answers a question formal logic ignores: how does the text persuade, beyond the reasons it offers? Runs three analyses (means of persuasion — ethos/pathos/logos; framing and argumentation schemes à la Walton, with their critical questions; dialectical tactics) and closes with an integrated verdict. Use WHENEVER the user asks to "analyze the rhetoric", "see how the text persuades", "map the appeals", "analyze the framing", "look at the rhetorical tactics", "identify ethos/pathos/logos" or similar. Use it also when the user pastes a speech or a third party's text and asks to take the persuasion apart. Do not use for formal-logical validity (skill `debate-logic-analyzer`), for concept auditing (skill `concept-auditor`), nor for stylistic revision.

---

# Rhetoric Analyzer

A skill for the rhetorical analysis of argumentative texts. Where logical analysis asks whether the inference holds and conceptual auditing asks whether the terms stay stable, this asks **how the text seeks assent** — by what means it persuades, beyond the reasons it states. It covers three analyses and a final synthesis. It produces structured prose in the chat, with no file generation.

## Operating principle

To persuade is not fallacious in itself. A text can be formally valid and rhetorically poor, or logically fragile and rhetorically irresistible. The analyst describes the **mechanics of persuasion** — it does not condemn them. The judgment is about *how* assent is sought, and about where rhetorical work replaces argumentative work, not about whether persuading is legitimate.

Each analysis answers a distinct question:

- **Means** answers: by which appeals does the text seek assent — the authority of the speaker, the emotion of the audience, the appearance of reason?
- **Framing** answers: how does the text shape the ground of the dispute, and which argumentation schemes does it operate?
- **Tactics** answers: what dialectical moves does the text make toward an interlocutor, real or imagined?

The boundary to respect: this skill describes the *rhetorical work*, not the *formal validity* nor the *conceptual stability*. That an appeal to authority leaves its critical questions open is this skill's business; that the inference is invalid is logical analysis's; that "freedom" shifts meaning is conceptual auditing's.

## Fixed output structure

The chat response **always** follows this structure, with the headings exactly as they appear below:

```
**I. Means of persuasion (ethos, pathos, logos)**
[analysis]

**II. Framing and argumentation schemes**
[analysis]

**III. Dialectical tactics**
[analysis]

**IV. Integrated Verdict**
[closing paragraph]
```

Do not include a preamble before section I. Do not include a summary of the analyzed text. Go straight to the first analysis.

---

## I. Means of persuasion (ethos, pathos, logos)

Identify by which of the three classical means the text seeks assent, and **how each is built**. Labeling is not enough; show the device.

- **Ethos** — persuasion through the figure of the speaker: credentials, declared experience, tone of authority, signals of belonging to the audience's group, strategic humility. Ask: what authority does the text claim for itself, and how?
- **Pathos** — persuasion through the audience's emotion: fear, indignation, hope, belonging, guilt, pride. Identify the emotion mobilized and the trigger (an image, a victim, a projected future). Ask: what emotion does the text kindle, and in the service of which conclusion?
- **Logos** — persuasion through the appearance of reason: data, lists, visible logical chaining, technical vocabulary, cited studies. Here the focus is not whether the reasoning is valid (that is logical analysis's job), but how the text **produces the effect of rationality**.

Indicate the dominant means and how the three are distributed. A text may rest its whole weight on one (pure pathos) or alternate to shield itself (ethos propping up a fragile logos).

---

## II. Framing and argumentation schemes

Two operations:

**1. Framing.** How does the text shape the ground before arguing? Identify:
- what is set as an **obvious presupposition**, beyond discussion;
- what is **excluded** from the frame (silenced alternatives, the middle ground that vanishes);
- the **structuring metaphors** (war, disease, family, market) that organize perception;
- the **lexical choice** that already carries the verdict (calling it "regime" or "government", "abortion" or "termination").

**2. Argumentation schemes.** Name the schemes the text operates — in Walton's sense: presumptively acceptable argument forms, each carrying **critical questions** that would have to be answered to sustain it. Typical schemes:

- **Argument from authority** — critical questions: is the source competent in the domain? is it impartial? what did it actually assert?
- **Argument from consequences / appeal to fear** — are the projected consequences likely? is there evidence of the link?
- **Argument from example** — is the example representative? are there counterexamples?
- **Argument from analogy** — are the cases similar in the relevant respect?
- **Ad hominem / appeal to emotion / appeal to popular opinion** — when they enter as a scheme.

For each scheme, indicate which critical questions the text **leaves open**. A scheme with open critical questions is not a fallacy by definition — it is persuasion that still owes its warrant. Marking that debt is the work.

---

## III. Dialectical tactics

Every persuasive text conducts a dialogue — with a real interlocutor, or with an adversary it constructs itself. Identify the moves:

- **Strategic concession** — yielding a minor point to gain credibility on the major one.
- **Anticipating the objection (prolepsis)** — raising the adversary's objection to disarm it before it is made.
- **Refutation** — and whether it faces the strongest version of the opposing position or a weakened one (straw man).
- **Rhetorical question** — which imposes the answer instead of asking.
- **Shifting the burden of proof** — demanding that the other refute, instead of sustaining one's own thesis.
- **Poisoning the well / circumstantial ad hominem** — disqualifying in advance whoever disagrees (by interest, ignorance, bad faith).
- **Dialectical false dilemma** — reducing the possible positions to two, one of them unacceptable.

At the end, name the **type of dialogue** the text appears to conduct and the one it actually conducts (in Walton's typology: persuasion dialogue, negotiation, information-seeking, deliberation, inquiry — or eristic quarrel, in which victory over the other replaces the joint search). The mismatch between the apparent dialogue and the real one is often the central finding.

---

## IV. Integrated Verdict

One paragraph. No more than eight sentences. It articulates the three analyses into a single rhetorical profile.

Internal structure of the paragraph:

1. A short, assertive sentence: how, in essence, the text seeks assent.
2. One to three supporting sentences: how each analysis contributes to that profile.
3. An aphoristic closing sentence.

The paragraph articulates how the three relate — often a framing (section II) prepares the ground for an emotional appeal (section I) that a dialectical tactic (section III) shields from objection. Show the chain.

**Diagnostic constraint.** The verdict describes how the text persuades, not how it should. It points to where persuasion does the work that argument should; it does not prescribe better rhetoric or rewrite. Describing an appeal to fear is not condemning it — it is identifying it. The language is analytical, not moralizing.

**When rhetoric serves the argument.** Not every persuasive text is manipulative. When the means of persuasion accompany reasons that sustain them — the ethos is pertinent, the pathos is proportional to what is at stake, the schemes answer their critical questions — the verdict acknowledges it. Honest rhetoric is that whose persuasive effect does not survive the removal of the reasons. Do not treat every appeal as a trick.

---

## Worked example

This example shows the entire four-section flow over a short text. It serves as a calibration anchor — the expected tone, depth, and length. Do not copy it; use it as a standard of reference.

**Analyzed text:**

> "As a doctor with thirty years on the ward, I tell you: if we do not reform the system now, it is our children who will inherit hospitals in ruins. The experts are unanimous. Whoever preaches delay either has not read the numbers, or has some interest in nothing changing."

---

**I. Means of persuasion (ethos, pathos, logos)**

- **Ethos** (dominant at the opening): "a doctor with thirty years on the ward" — professional authority and front-line experience are placed before any reason, so that what follows arrives already credentialed.
- **Pathos** (dominant in the middle): "it is our children who will inherit hospitals in ruins" — mobilizes fear and parental affection, projecting a catastrophic future. The trigger is the future victim, not a present datum.
- **Logos** (auxiliary): "the experts are unanimous" — produces an effect of rationality by consensus, without presenting a single number despite invoking them.

The weight is on ethos + pathos; the logos is gesture, not substance.

**II. Framing and argumentation schemes**

*Framing:* the question is shaped as a **temporal dilemma** — "reform now" or "ruin" — and the middle ground (gradual reform, a different reform) is excluded from the frame. The structuring metaphor is that of the inherited catastrophe.

*Schemes:*
- **Argument from authority** (the doctor; and "the experts") — open critical questions: are the experts in fact unanimous? are they impartial? what exactly did they assert? None is answered.
- **Argument from consequences / appeal to fear** ("hospitals in ruins") — open critical question: what is the evidence for the link between not-reforming-now and the projected ruin?

**III. Dialectical tactics**

The closing move executes a **circumstantial ad hominem** combined with a **dialectical false dilemma**: whoever disagrees "either has not read the numbers, or has an interest" — the only two admitted explanations for dissent are ignorance and bad faith. The move **poisons the well** against any objection before it is formulated and **shifts the burden of proof** onto the opponent. The text appears to conduct a **persuasion dialogue**, but its treatment of the adversary is **eristic**: disqualifying whoever disagrees replaces engaging with what they would say.

**IV. Integrated Verdict**

The text seeks assent through the combination of authority and fear, and shields it by closing the exit for disagreement. The ethos credentials, the pathos presses, and the final tactic converts all dissent into ignorance or interest — so that disagreeing has a cost before it has an argument. The invoked schemes owe all their warrant: the unanimity is asserted, never shown. It is an effective piece precisely where it is dialectically closed: it persuades by making it costly to think otherwise.

---

## Special cases

**Text with no persuasive intent:** if the material is purely expository, informative, or technical, with no bid for assent, say there is no rhetorical surface to analyze and stop. Do not invent rhetoric where there is only report.

**The user's own text (self-audit):** same rigor as a third party's text. Familiarity with the author does not soften the analysis.

**Speech or transcript of spoken word:** attend to the devices proper to orality — repetition, climax, apostrophe, shifts of rhythm — that in written text would be underlined. Mark them when they do persuasive work.

**Honest rhetoric:** when the means accompany reasons that sustain them, say so with the same rigor you would bring to manipulation. The rhetorical profile of a sound text is a finding, not an accusation.

**Long text (over 2,000 words):** analyze the *dominant* rhetorical device and the two or three schemes that sustain the central persuasion. Do not catalogue every figure — that blurs the verdict.

---

## What this skill does not do

- Does not assess formal-logical validity or inferential structure (use `debate-logic-analyzer`).
- Does not audit the stability of concepts (use `concept-auditor`).
- Does not run the Myth of the Given test.
- Does not revise style — rhetoric is not ornament of prose, it is a strategy of assent.
- Does not do fact-checking.
- Does not issue moral judgment on persuading. It describes the mechanics; condemning a device is the reader's job, not the analyst's.
- Does not suggest better rhetoric or rewrite the text. Diagnosis, not advice.
