---
name: cube-face
description: "The Cube Face - Deep dive into a single framework. Applies one framework with maximum depth and produces actionable output. Usage: /cube-face [inversion|first-principles|steelmanning|second-order|pre-mortem|boundary] [problem]"
---

<cube-face>

# THE CUBE -- Single Face Deep Dive

You are executing a single-face deep dive from The Cube. Instead of rotating through all 30 positions, the user wants to apply ONE framework with maximum depth and rigor. This produces a focused, actionable analysis through a single lens.

---

## FRAMEWORK SELECTION

Parse the user's arguments to determine which framework to apply. Accept these names (case-insensitive). Frameworks from any stack are available:

### Core Stack
| Input | Framework | Face |
|-------|-----------|------|
| inversion, invert, inverse | Inversion | F |
| first-principles, fp, first, principles | First Principles | B |
| steelmanning, steelman, steel, sm | Steelmanning | L |
| second-order, so, second, cascade | Second-Order Thinking | R |
| pre-mortem, premortem, pm, mortem | Pre-Mortem | U |
| boundary, boundaries, bc, edge, edges | Boundary Conditions | D |

### Sales Stack
| Input | Framework | Face |
|-------|-----------|------|
| frame-control, klaff, frame, pitch | Frame Control (Klaff) | F |
| spin, rackham, questions | SPIN Selling (Rackham) | B |
| rapport, carnegie, influence, relationship | Rapport & Influence (Carnegie) | L |
| challenger, dixon, teach, challenge | Challenger Sale (Dixon/Adamson) | R |
| ziglar, need-satisfaction, needs, zig | Need Satisfaction (Ziglar) | U |
| sandler, pain, qualification, pain-funnel | Pain Qualification (Sandler) | D |

### Marketing Stack
| Input | Framework | Face |
|-------|-----------|------|
| jtbd, jobs, christensen, jobs-to-be-done | Jobs to Be Done (Christensen) | F |
| positioning, ries, trout, position | Positioning (Ries & Trout) | B |
| storybrand, miller, story, brand-story | StoryBrand (Miller) | L |
| blue-ocean, ocean, kim, mauborgne | Blue Ocean (Kim & Mauborgne) | R |
| chasm, moore, crossing, adoption | Crossing the Chasm (Moore) | U |
| growth-loops, loops, growth, reforge, chen | Growth Loops (Chen/Reforge) | D |

### Coding Stack
| Input | Framework | Face |
|-------|-----------|------|
| decomposition, decompose, break-down | Decomposition | F |
| root-cause, rca, 5-whys, whys, root | Root Cause Analysis | B |
| constraints, constraint-map, limits | Constraint Mapping | L |
| trace, trace-execution, debug, step | Trace the Execution | R |
| edge-cases, edge-case, edges, corner-cases | Edge Case Analysis | U |
| mvp, mvp-proof, spike, proof, minimal | Minimum Viable Proof | D |

If no framework is specified, present the menu:

> **Which face of The Cube do you want to apply?**
>
> **Core Stack:**
> 1. **Inversion** -- How to guarantee failure
> 2. **First Principles** -- Strip to verifiable truths
> 3. **Steelmanning** -- Strongest case against solving
> 4. **Second-Order** -- Map the ripple effects
> 5. **Pre-Mortem** -- Name the failure modes
> 6. **Boundary** -- Test at the extremes
>
> **Sales Stack:**
> 7. **Frame Control** (Klaff) -- Who controls the frame?
> 8. **SPIN Selling** (Rackham) -- What questions should you ask?
> 9. **Rapport** (Carnegie) -- Does the buyer feel heard?
> 10. **Challenger** (Dixon) -- What can you teach them?
> 11. **Need Satisfaction** (Ziglar) -- What do they actually want?
> 12. **Pain Qualification** (Sandler) -- What is their real pain?
>
> **Marketing Stack:**
> 13. **Jobs to Be Done** (Christensen) -- What job are they hiring you for?
> 14. **Positioning** (Ries & Trout) -- What word do you own?
> 15. **StoryBrand** (Miller) -- Is the customer the hero?
> 16. **Blue Ocean** (Kim & Mauborgne) -- Where is uncontested space?
> 17. **Crossing the Chasm** (Moore) -- Where in the adoption lifecycle?
> 18. **Growth Loops** (Reforge) -- What is the growth loop?
>
> **Coding Stack:**
> 19. **Decomposition** -- What are the atomic pieces?
> 20. **Root Cause** -- Why does this actually happen?
> 21. **Constraint Mapping** -- Which constraints are real?
> 22. **Trace Execution** -- What does the code actually do?
> 23. **Edge Cases** -- What happens at null/empty/max?
> 24. **MVP Proof** -- What is the smallest test?

If no problem is specified, prompt for one after framework selection.

---

## CORE LOCK

```
## THE CORE

**Problem:** [crystallized statement]
**Lens:** [selected framework name] ([face letter])
**Why this lens:** [1 sentence on why this framework is the right one for this problem -- or note if the user chose it explicitly]
```

---

## DEEP DIVE PROTOCOL

Unlike the full Cube where each face gets 4-8 sentences, a single-face deep dive goes much deeper. Follow the framework-specific protocol below.

### If INVERSION [F]:

**Phase 1: Failure Inventory**
List 7-10 specific ways to make this problem worse. Be creative and thorough. Include obvious failures AND subtle, slow-acting ones.

**Phase 2: Failure Taxonomy**
Categorize the failures:
- **Active sabotage** -- things you could do to make it worse
- **Passive neglect** -- things you could fail to do
- **Wrong assumptions** -- beliefs that guarantee the wrong approach
- **Misaligned incentives** -- structural forces that push toward failure

**Phase 3: Inversion Map**
For each failure, state its inverse -- the protective action. This is your "do not cross" list.

**Phase 4: The #1 Anti-Target**
Name the single worst outcome. Describe it vividly. This is the scenario all planning should be designed to make impossible.

---

### If FIRST PRINCIPLES [B]:

**Phase 1: Assumption Audit**
List every assumption embedded in how the problem is currently framed. Number them. Be exhaustive (aim for 8-12).

**Phase 2: Assumption Testing**
For each assumption, classify:
- **Verified** -- you can prove this is true from first-hand evidence
- **Inherited** -- you believe this because someone told you or because "that's how it's done"
- **Untested** -- you have no evidence either way
- **Questionable** -- evidence suggests this may be false

**Phase 3: Bedrock Truths**
After stripping assumptions, what remains? List the 3-5 things that are genuinely, verifiably true. These are your building blocks.

**Phase 4: Reconstructed Problem**
Restate the problem using ONLY the bedrock truths. No inherited assumptions. How does the problem change? What "constraints" vanish?

---

### If STEELMANNING [L]:

**Phase 1: Steel Construction**
Build the strongest possible argument for why this problem should NOT be solved. Use real logic, real evidence, real trade-offs. No straw men. The steelman should be genuinely persuasive.

**Phase 2: Evidence Gathering**
For each point in the steelman, cite the strongest supporting evidence. What data, precedents, or examples support the case against solving?

**Phase 3: Steelman Stress Test**
Now try to defeat the steelman. For each point:
- Can it be refuted with evidence?
- Can it be reframed?
- Is it true but irrelevant?
- Is it a real constraint or an excuse?

**Phase 4: Verdict**
Can the steelman be defeated? If yes, what is the winning counter-argument? If no (or partially), what does that mean for how you approach the problem?

---

### If SECOND-ORDER THINKING [R]:

**Phase 1: Solution Inventory**
List the 3-5 most plausible solutions to the problem.

**Phase 2: Cascade Mapping**
For each solution, map the chain:
- **1st order:** What does this directly solve?
- **2nd order:** What new problems or changes does the solution create?
- **3rd order:** What do THOSE changes cause?
- **4th order (if applicable):** Where does the chain lead?

**Phase 3: Cascade Comparison**
Compare the cascade maps side by side. Which solution has the cleanest downstream? Which has hidden time bombs at the 3rd or 4th order?

**Phase 4: Second-Order Winner**
Which solution looks best when judged by its 2nd and 3rd order effects (not its 1st order appeal)? This is often a different answer than the "obvious" choice.

---

### If PRE-MORTEM [U]:

**Phase 1: Death Certificate**
The project, decision, or solution is dead. Write the death certificate:
- **Time of death:** [when did it fail?]
- **Cause of death:** [primary failure]
- **Contributing factors:** [secondary causes]

**Phase 2: Failure Mode Inventory**
List 7-10 specific failure modes. For each:
- **Name:** A specific, named failure (not "things go wrong")
- **Mechanism:** How exactly does this failure occur?
- **Probability:** Low / Medium / High
- **Detectability:** How much warning do you get? (None / Some / Clear signals)
- **Impact:** If this happens, how bad is it? (Recoverable / Serious / Fatal)

**Phase 3: Danger Matrix**
Plot failure modes on a 2x2:
- **High Impact + Low Detectability** = CRITICAL (focus here)
- **High Impact + High Detectability** = IMPORTANT (set up monitoring)
- **Low Impact + Low Detectability** = WATCH (periodic check)
- **Low Impact + High Detectability** = MANAGE (standard process)

**Phase 4: Kill Shots**
Name the 1-3 failure modes that are most likely to actually kill this. For each, define one specific preventive action and one early warning signal.

---

### If BOUNDARY CONDITIONS [D]:

**Phase 1: Extreme Scenarios**
Test the problem at each extreme:
- **Zero:** Remove the key resource/constraint entirely. What happens?
- **10x:** Multiply the key variable by 10. What changes?
- **1000x:** Multiply by 1000. What breaks? What simplifies?
- **Time-starved:** You have 24 hours. What do you do?
- **Resource-unlimited:** Money, people, and time are infinite. Now what?
- **Reversed:** What if the opposite of the current situation were true?

**Phase 2: Assumption Collapse Map**
Which assumptions from the "normal" framing collapsed at each extreme? List them explicitly.

**Phase 3: Scale Invariants**
What stayed true at EVERY extreme? These are the real load-bearing elements of the problem. Everything else is context-dependent.

**Phase 4: Boundary Insight**
What do the extremes reveal about the problem's true nature? Often a problem that seems complex in the normal range becomes obvious at the boundaries.

---

## OUTPUT FORMAT

```
+-------------------------------------------+
|           T H E   C U B E                 |
|           Face Deep Dive                  |
|     [FRAMEWORK NAME] ([FACE LETTER])      |
+-------------------------------------------+

# [FRAMEWORK] Deep Dive
## Problem: [short title]
### Date: [date]

---

## THE CORE
[Problem + Lens + Why this lens]

---

## Phase 1: [phase name]
[content]

## Phase 2: [phase name]
[content]

## Phase 3: [phase name]
[content]

## Phase 4: [phase name]
[content]

---

## BOTTOM LINE
[2-3 sentences: what this single framework reveals about the problem that changes how you should approach it]

---
Want more perspectives? Run /cube for the full 30-position rotation or /cube-quick for a 10-point scan.
---
```

## DEEP DIVE PROTOCOL FOR NON-CORE FRAMEWORKS

For frameworks from the Sales, Marketing, or Coding stacks that do not have a custom 4-phase protocol above, follow this adaptive deep dive structure:

**Phase 1: Comprehensive Application**
Apply the framework's core question (from the stack definition) exhaustively. Generate 7-10 specific observations, findings, or answers. Be thorough -- this is a deep dive, not a scan.

**Phase 2: Implications & Connections**
For each finding from Phase 1, trace the implications: "If this is true, then..." Identify which findings reinforce each other and which create tension. Map the relationships.

**Phase 3: Stress Test**
Challenge every finding from Phase 1. Where is the evidence weakest? What assumptions are embedded? What would need to be true for the opposite to be correct? Apply the framework's opposite-face tension (from the stack's axis definitions) as a counterweight.

**Phase 4: Actionable Synthesis**
Distill into 3-5 specific, actionable recommendations. Each recommendation should include: what to do, why (which findings support it), and what could go wrong. Name the single most important insight that this framework uniquely reveals.

The banner should show the stack name:
```
+-------------------------------------------+
|           T H E   C U B E                 |
|           Face Deep Dive                  |
|   [FRAMEWORK] ([STACK NAME] Stack)        |
+-------------------------------------------+
```

## EXECUTION NOTES

1. A face deep dive should be 3-4x more thorough than the same face in the full Cube rotation. The full Cube gives each face 4-8 sentences. A deep dive gives it a full 4-phase analysis.
2. For Core stack frameworks, use the custom 4-phase protocols defined above. For other stacks, use the adaptive deep dive protocol.
3. The BOTTOM LINE at the end should be the single most important reframe or insight -- the thing the user would not have seen without applying this specific lens.
4. When using a non-core framework, end with: "Want the full [stack] rotation? Run /cube-[stack] for all 30 positions."

</cube-face>
