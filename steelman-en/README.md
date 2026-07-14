# Steelman (English)

Agent Skill for the charitable reconstruction of positions — for columns, essays, polemics, and drafts before publishing.

The audit skills describe what a text is; this one produces what the text lacks: **the strongest version of what it opposes**. Given a text that criticizes a position, it reconstructs that position in its strongest, most charitable form and confronts the text's argument with it — for a polemic that defeats the best adversary, not the most convenient one. All output is structured prose in the chat, with no file generation.

> This is the English version. For the Portuguese original, see [`steelman`](../steelman/).

## The four steps

| Section | What it does |
|---------|--------------|
| **I. Target position** | How the text represents the position it attacks or defends. |
| **II. Strong reconstruction (steelman)** | The best version of the opposing position — charitable premises, best arguments, erased distinctions. |
| **III. Confrontation** | Does the text's argument survive the steelman, or did it only defeat the straw man? |
| **IV. Integrated Verdict** | Does the attack resist the strongest version of the opposing position? |

Two modes, the same mechanics:
- **Charity audit** — the text criticizes a position; the skill reconstructs it in strong form and checks whether the criticism reaches it.
- **Red-team** — the text holds a thesis; the skill reconstructs the strongest opposition and tests whether the thesis survives.

## Principle: strong, but faithful

The steelman reconstructs the best version of *that* position — not a different thesis put in its place (that would be evasion, not charity). And reconstructing a position in strong form **is not endorsing it**: the analyst takes no side, and would give the opposing position the same treatment.

## Boundary with other skills

- Does not assess formal-logical validity — that is [`debate-logic-analyzer`](../debate-logic-analyzer/).
- Does not audit concepts — that is [`concept-auditor`](../concept-auditor/).
- Does not analyze rhetoric — that is [`rhetoric-analyzer`](../rhetoric-analyzer/).

## Installation

- **`SKILL.md`** — the source file. Place the skill folder in `~/.claude/skills/steelman-en/SKILL.md`.
- **`steelman-en.skill`** — the packaged bundle, for clients that accept direct upload.

## Usage

Once installed, invoke it by asking to steelman a text, reconstruct the opposing argument, check whether you're attacking a straw man, or play devil's advocate against your own thesis — then paste the text.

## Foundations

- **Rapoport's rules (re-expressing the opponent in the strongest form)** — Dennett, Daniel C. *Intuition Pumps and Other Tools for Thinking*.
- **You only know your own position if you know the best version of the opposing one** — Mill, John Stuart. *On Liberty*, ch. II.
- **Principle of charity** — Davidson, Donald. *Inquiries into Truth and Interpretation*.
- **Pragma-dialectical rule against the straw man** — van Eemeren, Frans H.; Grootendorst, Rob. *A Systematic Theory of Argumentation*.

## License

MIT — see [LICENSE](LICENSE).

Author: Francisco Razzo.
