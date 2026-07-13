# Debate Logic Analyzer (English)

Agent Skill for the logical and epistemological audit of argumentative texts — columns, essays, polemics, long posts, transcripts, and drafts before publishing.

The skill neither paraphrases nor revises style. It runs **three independent analyses** of an argument's structure and closes with an integrated verdict. All output is structured prose in the chat, with no file generation.

> This is the English version. For the Portuguese original, see [`debate-logic-analyzer`](../debate-logic-analyzer/).

## The three analyses

| Section | Question it answers |
|---------|---------------------|
| **I. Nolt Diagram** | How does the author *organize* the support for their conclusions? |
| **II. Propositional Analysis** | Does the inference *hold formally*? |
| **III. Myth of the Given Test** | Does the author acknowledge the *conceptual mediation* of the evidence they invoke? |
| **IV. Integrated Verdict** | What does the combination of the three results reveal about the text? |

- **Nolt Diagram** — extracts premises and conclusions, numbers them, and represents the support relations in ASCII (convergent, linked, serial), exposing fragile chains, orphan premises, and implicit conclusions.
- **Propositional Analysis** — formalizes the central argument in propositional logic (Unicode connectives: ∧ ∨ → ¬ ↔ ⊢) and, when there is a hidden universalization, extends to first-order predicate logic (∀ ∃). Assesses formal validity and names formal fallacies and structural defects.
- **Myth of the Given Test** — a strong reading à la Sellars. Reconstructs the logical space of reasons and identifies which conceptual level the author naturalizes as if it were raw given.
- **Integrated Verdict** — one paragraph articulating the three results into a single judgment, strictly descriptive: it points to weaknesses, it does not suggest repairs.

## Features

- Reconstructs implicit conclusions in texts that end in rhetorical questions.
- Reveals hidden universals in arguments that generalize from a single example.
- Handles short texts (aphorism, long tweet) and long ones (over 2,000 words) with proportional strategies.
- Recognizes inductive, analogical, or abductive argumentation and adapts the analysis instead of forcing formalization.

## What the skill does not do

- Does not revise style.
- Does not do fact-checking or journalistic verification (*structural* defects tied to data enter the analysis; verifying whether a number is correct does not).
- Does not issue political or ideological judgment on the conclusions — only on the logical structure and the epistemic apparatus.
- Does not suggest reinforcements, reformulations, or repair paths. Diagnosis, not advice.
- Does not rewrite the text.

## Installation

The skill is distributed in two forms in this folder:

- **`SKILL.md`** — the source file. Place the skill folder in your Claude skills directory (for example `~/.claude/skills/debate-logic-analyzer-en/SKILL.md`).
- **`debate-logic-analyzer-en.skill`** — the packaged bundle, for clients that accept direct upload of the `.skill` file.

## Usage

Once installed, invoke it by asking to analyze, audit, diagram, check the logic, or formalize a text — then paste the text to be analyzed.

## Foundations

- **Nolt Diagram** — Nolt, John. *Informal Logic: Possible Worlds and Imagination*.
- **Propositional and predicate logic** — Gensler, Harry J. *Introduction to Logic*. London: Routledge.
- **Myth of the Given** — Sellars, Wilfrid. *Empiricism and the Philosophy of Mind* (1956); extensions in McDowell (*Mind and World*) and Brandom (*Making It Explicit*).

## License

MIT — see [LICENSE](LICENSE).

Author: Francisco Razzo.
