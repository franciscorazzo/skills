# Rhetoric Analyzer (English)

Agent Skill for the rhetorical analysis of argumentative texts — columns, essays, speeches, polemics, long posts, transcripts, and drafts before publishing.

It answers a question formal logic ignores: **how does the text persuade, beyond the reasons it offers?** Where logical analysis asks whether the inference holds, this asks by what means the text seeks assent. Persuading is not fallacious in itself — the skill describes the mechanics of persuasion, it does not condemn them. All output is structured prose in the chat, with no file generation.

> This is the English version. For the Portuguese original, see [`rhetoric-analyzer`](../rhetoric-analyzer/).

## The three analyses

| Section | Question it answers |
|---------|---------------------|
| **I. Means of persuasion** | By which appeals does the text seek assent — ethos, pathos, logos? |
| **II. Framing and schemes** | How does the text shape the ground of the dispute, and which argumentation schemes does it operate? |
| **III. Dialectical tactics** | What moves does it make toward an interlocutor, real or imagined? |
| **IV. Integrated Verdict** | What is the rhetorical profile of the text, and where does persuasion replace argument? |

- **Means of persuasion** — ethos (authority of the speaker), pathos (emotion of the audience), logos (appearance of reason): it identifies the device, not just the label.
- **Framing and schemes** — how the text presupposes, excludes, and names (framing), and which argumentation schemes it operates, with the *critical questions* each one leaves open.
- **Dialectical tactics** — concession, prolepsis, refutation, ad hominem, burden-shifting — and the type of dialogue the text appears to conduct versus the one it actually conducts.
- **Integrated Verdict** — one paragraph, strictly descriptive, tracing the rhetorical profile and the chain from framing to appeal to tactic.

## Boundary with other skills

- Does not assess formal-logical validity — that is [`debate-logic-analyzer`](../debate-logic-analyzer/).
- Does not audit the stability of concepts — that is [`concept-auditor`](../concept-auditor/).
- Does not revise style or do fact-checking. Does not issue moral judgment on persuading.

## Installation

- **`SKILL.md`** — the source file. Place the skill folder in `~/.claude/skills/rhetoric-analyzer-en/SKILL.md`.
- **`rhetoric-analyzer-en.skill`** — the packaged bundle, for clients that accept direct upload.

## Usage

Once installed, invoke it by asking to analyze the rhetoric, see how the text persuades, or map the appeals — then paste the text.

## Foundations

- **Argumentation schemes and critical questions** — Walton, Douglas N.; Reed, Chris; Macagno, Fabrizio. *Argumentation Schemes*. Cambridge University Press.
- **Rhetoric, persuasion, and dialectic** — Walton, Douglas N. *Media Argumentation: Dialectic, Persuasion, and Rhetoric*. Cambridge University Press.
- **Emotion in argument (pathos)** — Walton, Douglas N. *The Place of Emotion in Argument*. Penn State University Press.
- **Types of dialogue** — Walton, Douglas N. *Fundamentals of Critical Argumentation*. Cambridge University Press.
- **Root of the three means (ethos/pathos/logos)** — Aristotle. *Rhetoric*.

## License

MIT — see [LICENSE](LICENSE).

Author: Francisco Razzo.
