# Contributing to The Cube

Thank you for your interest in improving The Cube. This is an open-source thinking tool, and contributions from diverse perspectives make it better.

---

## Ways to Contribute

### 1. Submit Feedback from Your Cube Analyses

The most valuable contribution is real-world feedback. After running a Cube analysis, use `/cube-feedback` to capture structured feedback. This helps us understand:
- Which positions produce the most valuable insights
- Which positions feel redundant
- What angles are missing
- Whether the analysis length is right

To share your feedback with the project:
- Open a GitHub issue with the `feedback` label
- Include your feedback file (from `.cube/feedback/`)
- Redact any sensitive problem details -- we care about which *positions* were valuable, not the specifics of your problem

### 2. Report Bugs or Issues

If The Cube produces output that is malformed, inconsistent, or fails to follow the protocol:
- Open a GitHub issue with the `bug` label
- Describe which skill you used (`/cube`, `/cube-quick`, etc.)
- Include the relevant portion of the output
- Note your Claude Code version if possible

### 3. Suggest Framework Improvements

If you have ideas for improving how a specific framework is applied:
- Open a GitHub issue with the `framework` label
- Specify which face/framework you are addressing
- Describe the current behavior and the improvement
- If possible, include a before/after example showing how the improved framework produces better insight on a real problem

### 4. Suggest New Rotation Points

If you believe a specific combination of frameworks is missing or underserved:
- Open a GitHub issue with the `rotation` label
- Describe the combination (which frameworks, and why this combination produces something the existing rotation protocol misses)
- Include an example of the insight this combination would produce

### 5. Improve Documentation

Documentation improvements are always welcome:
- Fix typos, clarify explanations, improve examples
- Add translations
- Create tutorials or guides
- Submit as a standard pull request

### 6. Propose New Stacks

If you want to create a new domain-specific cube (e.g., Legal, Design, Leadership, Finance):
- Open a GitHub issue with the `stack-proposal` label
- See "Stack Proposals" section below for full requirements

### 7. Propose New Skills

If you have an idea for a new `/cube-*` slash command:
- Open a GitHub issue with the `skill` label
- Describe the use case: when would someone use this command?
- Describe the expected input and output
- Explain how it relates to the existing skill suite

---

## Development Guidelines

### Skill File Format

Skills are Markdown files in `.claude/skills/`. Each skill requires:

```markdown
---
name: [skill-name]
description: "[one-line description visible to users in skill listings]"
---

<skill-name>
[skill content -- instructions for Claude to execute]
</skill-name>
```

### Writing Good Skill Instructions

1. **Be directive.** The skill file is an instruction set, not documentation. Tell Claude what to do, step by step.
2. **Include self-prompts.** For each analysis point, provide the specific question Claude should ask itself. "What are the second-order effects?" is better than "think about consequences."
3. **Specify output format.** Include a template showing exactly how the output should be structured.
4. **Include execution notes.** Common failure modes and how to avoid them.
5. **Test with real problems.** Before submitting, run the skill on 2-3 real problems and verify the output is specific and valuable.

### Quality Standards

- **Specificity:** Every instruction must push toward problem-specific output, not generic advice
- **Geometry consistency:** All references to the cube (faces, edges, axes, corners) must use the correct geometric relationships
- **Self-contained:** Each skill file must work independently -- no external dependencies
- **Backward compatible:** Changes should not break existing workflows

### Commit Messages

Follow this format:
```
[component] short description

Longer description if needed.

Examples:
  [cube] add cross-reference protocol to edge rotations
  [cube-quick] fix position numbering in axis tensions
  [docs] clarify installation instructions for global install
  [cube-face] add 4-phase protocol for boundary conditions
```

---

## Stack Proposals

Proposing a new stack (a new domain-specific cube) is a high-impact contribution.

### Requirements for a New Stack

1. **Domain specificity:** The stack must serve a domain where the Core cube's general-purpose frameworks miss domain-specific angles that practitioners would recognize as essential.

2. **Six orthogonal frameworks:** Each framework must see something the other five cannot. No two should be reducible to each other.

3. **Three productive opposite-pair tensions:** Each pair of opposite faces must create genuine dialectical tension, not artificial grouping. Describe each tension.

4. **Named rotations:** All 12 edges, 3 axes, and 8 corners must have meaningful names that capture the character of each combination.

5. **Universal applicability within the domain:** Every framework must work across the full range of problems in that domain. A sales framework that only works for SaaS does not belong.

6. **Demonstration:** Provide a worked example showing the stack applied to a real problem, highlighting at least 3 rotations that produce insights the Core cube would miss.

### Process

1. Open a GitHub issue with the `stack-proposal` label
2. Address all six requirements above
3. Community discussion (minimum 2 weeks)
4. If consensus supports it, the proposer creates the full skill file
5. Review and merge

### Current Stacks

| Stack | Command | Domain |
|-------|---------|--------|
| Core | `/cube` | General problem solving |
| Sales | `/cube-sales` | Sales methodology |
| Marketing | `/cube-marketing` | Marketing strategy |
| Coding | `/cube-coding` | Engineering problem solving |

---

## Framework Proposals

Proposing a new framework (a new "face" of an existing cube) is the highest-impact contribution and requires the highest bar.

### Requirements for a New Framework

1. **Orthogonality:** The framework must see something genuinely different from all existing frameworks. If it can be reduced to a combination of existing frameworks, it belongs as an edge or corner rotation, not a new face.

2. **Universal applicability:** The framework must work on technical, business, personal, creative, and strategic problems. Domain-specific frameworks do not belong on the cube.

3. **Adversarial to framing:** The framework must force the user out of the problem's native frame. If it reinforces the existing framing, it does not meet The Cube's core design principle.

4. **Productive tension pairing:** The framework must create a meaningful dialectical tension when paired with at least one existing framework as an opposite face.

5. **Demonstration:** Include a worked example showing the framework applied to a real problem, with clear evidence that it produces insight the existing six frameworks would miss.

### Process

1. Open a GitHub issue with the `framework-proposal` label
2. Address all five requirements above
3. Community discussion (minimum 2 weeks)
4. If consensus supports it, a prototype skill is created and tested
5. If testing validates it, it is merged into the protocol

Note: Adding a seventh framework would require restructuring the cube geometry. This is possible (e.g., moving to a different polyhedron or adding a "floating" framework), but it is a significant protocol change. Propose only if the value clearly justifies the complexity.

---

## Code of Conduct

- **Be specific.** Vague feedback is hard to act on. "I didn't like the edge rotations" is less useful than "The Autopsy (Position 7) repeated what Inversion and Pre-Mortem already said instead of finding the intersection."
- **Be constructive.** Criticism of the protocol is welcome. Criticism of people is not.
- **Show your work.** Claims about framework improvements should include examples. "This would be better" needs to show *how* it would be better on a real problem.
- **Respect the geometry.** The cube structure is not arbitrary. Before proposing changes to the rotation protocol, understand why the current structure exists (see ETHOS.md).

---

## License

By contributing to The Cube, you agree that your contributions will be licensed under the MIT License.
