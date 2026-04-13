---
name: cube-quick
description: "The Cube Quick Scan - Fast 10-position analysis. Supports all stacks: core (default), sales, marketing, coding. Usage: /cube-quick [--sales|--marketing|--coding] [problem]"
---

<cube-quick>

# THE CUBE -- Quick Scan (10 Positions)

You are executing The Cube Quick Scan -- a condensed version of the full Cube rotation. Instead of all 30 positions, this runs the 6 individual faces, the 3 axis tensions (opposite-face dialectics), and a focused synthesis. This gives the user multi-dimensional coverage in a fraction of the time.

Use this mode when: the problem needs fresh perspective but not exhaustive analysis, time is limited, or the user wants to decide whether to run a full rotation.

## STACK SELECTION

Check the user's arguments for a stack flag. If none specified, default to Core.

| Flag | Stack | Full command |
|------|-------|-------------|
| (none) | Core | `/cube` |
| --sales, sales | Sales | `/cube-sales` |
| --marketing, marketing | Marketing | `/cube-marketing` |
| --coding, coding | Coding | `/cube-coding` |

Use the frameworks from the selected stack for all 10 positions. The rotation protocol (faces, axes, synthesis) is the same for every stack.

### Stack Framework Reference

**Core:** F:Inversion, B:First Principles, L:Steelmanning, R:Second-Order, U:Pre-Mortem, D:Boundary | Axes: X:Mirror, Y:Crucible, Z:Paradox
**Sales:** F:Frame Control(Klaff), B:SPIN(Rackham), L:Rapport(Carnegie), R:Challenger(Dixon), U:Need Satisfaction(Ziglar), D:Pain Qualification(Sandler) | Axes: X:Negotiation Table, Y:Motivation Spectrum, Z:Relationship Paradox
**Marketing:** F:JTBD(Christensen), B:Positioning(Ries&Trout), L:StoryBrand(Miller), R:Blue Ocean(Kim&Mauborgne), U:Crossing Chasm(Moore), D:Growth Loops(Chen/Reforge) | Axes: X:Perception Gap, Y:Growth Paradox, Z:Category Question
**Coding:** F:Decomposition, B:Root Cause Analysis, L:Constraint Mapping, R:Trace Execution, U:Edge Cases, D:MVP Proof | Axes: X:Depth vs Breadth, Y:Confidence Spectrum, Z:Reality Check

---

## CUBE GEOMETRY (Same as full Cube)

```
              +---------------+
             /   FACE 5      /|
            /  PRE-MORTEM   / |
           /     (U)       /  |
          +---------------+   |
          |               |   |
 FACE 3   |   FACE 1      | FACE 4
STEELMAN  |  INVERSION    |SECOND-ORDER
  (L)     |    (F)        |  (R)
          |               |   +
          |               |  / FACE 2
          |               | / FIRST PRINCIPLES
          |               |/     (B)
          +---------------+
              FACE 6
            BOUNDARY
              (D)
```

## EXECUTION

### STEP 0: PROBLEM INTAKE

Same as full Cube. If the user provided a problem, use it. If not, prompt:

> **Quick Scan -- What problem are you working on?**
> Describe it in 1-3 sentences. The Cube will analyze it from 10 angles.

Wait for the user's response before proceeding.

### STEP 1: CORE LOCK

```
## THE CORE

**Problem:** [1-2 sentence crystallized problem statement]
**Stakes:** [What is at risk]
**Current Frame:** [How it is currently being thought about]
```

### STEP 2: FACE SCAN (Positions 1-6)

Apply each framework independently. Keep each analysis to 3-5 sentences -- tighter than the full Cube, focused on the single most important insight per face.

**[F] Position 1: Inversion** -- How would I guarantee this gets worse?
**[B] Position 2: First Principles** -- What is actually true here?
**[L] Position 3: Steelmanning** -- Strongest case for NOT solving this?
**[R] Position 4: Second-Order Thinking** -- What new problems does solving create?
**[U] Position 5: Pre-Mortem** -- It failed. What killed it?
**[D] Position 6: Boundary Conditions** -- What happens at the extremes?

End each with: **Key Insight:** [one sentence]

### STEP 3: AXIS TENSIONS (Positions 7-9)

The three rotation axes create the deepest tensions. 3-4 sentences each.

**[X-Axis] Position 7: The Mirror** (Inversion x First Principles)
What you must avoid vs what you must build from. What lives in the gap?

**[Y-Axis] Position 8: The Crucible** (Pre-Mortem x Boundary Conditions)
How it fails over time vs where it breaks structurally. Where do these coincide?

**[Z-Axis] Position 9: The Paradox** (Steelmanning x Second-Order Thinking)
The best reason not to solve it vs what happens when you do. Is the resistance justified?

End each with: **Key Insight:** [one sentence]

### STEP 4: QUICK SYNTHESIS (Position 10)

Provide:

1. **The Real Problem** -- How the problem looks after 9 positions vs the original frame (1-2 sentences)
2. **Top 2 Paths Forward** -- The most robust solutions, with one key risk each
3. **The Decision Point** -- What the user needs to decide that analysis cannot decide for them
4. **Go Deeper?** -- Which specific edges or corners from the full Cube would be most valuable for THIS problem (name 2-3 specific positions by name, e.g., "The Gauntlet would stress-test whether your team concern survives maximum adversity")

## OUTPUT FORMAT

```
+-------------------------------------------+
|           T H E   C U B E                 |
|             Quick Scan                    |
|          v1.0  |  10 Positions            |
+-------------------------------------------+

# THE CUBE -- Quick Scan Report
## Problem: [short title]
### Date: [date]

---

## THE CORE
[Problem + Stakes + Current Frame]

---

## FACE SCAN (Positions 1-6)

### [F] Position 1: Inversion
[analysis]
**Key Insight:** [one sentence]

### [B] Position 2: First Principles
[analysis]
**Key Insight:** [one sentence]

### [L] Position 3: Steelmanning
[analysis]
**Key Insight:** [one sentence]

### [R] Position 4: Second-Order Thinking
[analysis]
**Key Insight:** [one sentence]

### [U] Position 5: Pre-Mortem
[analysis]
**Key Insight:** [one sentence]

### [D] Position 6: Boundary Conditions
[analysis]
**Key Insight:** [one sentence]

---

## AXIS TENSIONS (Positions 7-9)

### [X] Position 7: The Mirror
[dialectic]
**Key Insight:** [one sentence]

### [Y] Position 8: The Crucible
[dialectic]
**Key Insight:** [one sentence]

### [Z] Position 9: The Paradox
[dialectic]
**Key Insight:** [one sentence]

---

## QUICK SYNTHESIS (Position 10)

**The Real Problem:** [reframed]
**Path 1:** [solution + key risk]
**Path 2:** [solution + key risk]
**The Decision Point:** [what must be chosen, not analyzed]

---
Want the full rotation? Run /cube to get all 30 positions with edge, corner, and deep synthesis analysis.
Recommended deep-dive positions for this problem: [2-3 specific named positions]
---
```

## EXECUTION NOTES

1. Quick Scan trades depth for speed. Each position should be punchy and specific.
2. The Axis Tensions (positions 7-9) are the highest-value cross-analyses because they create maximum dialectical tension. That is why Quick Scan keeps them.
3. The "Go Deeper" recommendation at the end should be genuinely helpful -- not a generic upsell. Name the specific positions that would add the most value for THIS problem and say why.

</cube-quick>
