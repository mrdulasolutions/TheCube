---
name: cube
description: "The Cube - Multi-dimensional problem solver. Six cognitive frameworks mapped to a Rubik's cube. Full 30-position rotation with cross-logic analysis. Use /cube-quick for a fast 10-point scan, /cube-face for a single framework deep dive, /cube-guided for interactive mode."
---

<cube>

# THE CUBE -- Multi-Dimensional Problem Solving Protocol

You are executing The Cube, a structured problem-solving system modeled on a Rubik's cube. Six faces, six cognitive frameworks. The problem goes at the core. The cube rotates through every geometric combination -- 6 faces, 12 edges, 3 axes, 8 corners -- producing 30 distinct analysis points before returning to home position with a grand synthesis.

The throughline in all six frameworks: they force you out of the frame the problem arrived in. The problem's native framing is usually part of what's trapping you.

---

## CUBE GEOMETRY

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

### THE SIX FACES

**FACE 1 -- INVERSION (F/Front)**
Don't ask how to solve it -- ask how to guarantee the problem gets worse. What you're trying to avoid becomes clearer than what you're trying to achieve.
"All I want to know is where I'm going to die, so I'll never go there." -- Munger

**FACE 2 -- FIRST PRINCIPLES (B/Back)**
Strip every assumption until you hit something you can verify from scratch. Most "problems" are actually inherited constraints that no longer apply.

**FACE 3 -- STEELMANNING (L/Left)**
Build the strongest possible case for why the problem can't or shouldn't be solved. If you can't defeat the steel man, you don't understand the problem yet.

**FACE 4 -- SECOND-ORDER THINKING (R/Right)**
Every solution creates new problems. Map 2-3 levels deep: "this fixes X, which causes Y, which means Z." Most bad decisions look good at the first-order level.

**FACE 5 -- PRE-MORTEM (U/Up)**
The project is already dead. What killed it? Forces specificity -- you stop saying "risk" and start naming actual failure modes. Far more honest than forward-looking planning.

**FACE 6 -- BOUNDARY CONDITIONS (D/Down)**
Push the problem to its extremes: zero resources, unlimited resources, 1000x scale, one day to solve it. Assumptions that feel load-bearing in the normal range often collapse at the edges -- and that tells you what the problem is actually made of.

### OPPOSITE FACE PAIRS (Rotation Axes)

These pairs sit on opposite sides of the cube, creating productive dialectical tension:
- **X-Axis (F<>B):** Inversion x First Principles -- Destruction vs Construction
- **Y-Axis (U<>D):** Pre-Mortem x Boundary -- Temporal Failure vs Structural Failure
- **Z-Axis (L<>R):** Steelmanning x Second-Order -- Resistance vs Consequences

---

## UX PROTOCOL

These rules govern how the report is presented to the user. Follow them throughout the entire rotation.

### Opening Banner
When starting the analysis, display this banner before anything else:

```
+-------------------------------------------+
|           T H E   C U B E                 |
|     Multi-Dimensional Problem Solver      |
|          v1.0  |  30 Positions            |
+-------------------------------------------+
```

### Progress Indicators
At the start of each phase, display:
```
--- PHASE [N]: [PHASE NAME] --- Positions [X-Y] --- Progress [completed]/30
```

### Key Insight Tags
After EVERY analysis position (faces, edges, axes, corners), end with a single bold line:

**Key Insight:** [One sentence. The single most important thing this position revealed.]

This makes the report scannable. The key insight should be specific enough that someone reading ONLY the key insights gets a meaningful summary.

### Cross-Reference Protocol
When a later rotation connects to or reinforces an earlier one, reference it explicitly:
"This reinforces Position 7 (The Autopsy)..." or "This contradicts what Position 3 (Steelmanning) found..."

Cross-references are how the cube's geometry becomes visible. They show the user that insights are not isolated -- they connect across the cube's structure.

### Phase Transition Markers
Between each phase, display a transition block:
```
---
PHASE [N] COMPLETE | [X]/30 positions analyzed
[One sentence: the single most important discovery from this phase]
Rotating to Phase [N+1]...
---
```

### Complexity Assessment
After completing Phase 1 (Face Scan), assess problem complexity before moving to Edge Rotations:
- **Depth:** How many levels of first principles were found? (Shallow: 1-2, Medium: 3-4, Deep: 5+)
- **Risk Density:** How many distinct failure modes from Pre-Mortem? (Low: 1-2, Medium: 3-4, High: 5+)
- **Cascade Potential:** How deep do second-order effects reach? (1 level, 2 levels, 3+ levels)
- **Boundary Sensitivity:** How many assumptions collapsed at the boundaries? (Stable, Moderate, Fragile)

Display as:
```
COMPLEXITY ASSESSMENT: [LOW | MEDIUM | HIGH | EXTREME]
Depth: [rating] | Risk Density: [rating] | Cascade Potential: [rating] | Boundary Sensitivity: [rating]
```

---

## EXECUTION PROTOCOL

### STEP 0: PROBLEM INTAKE

If the user provided a problem statement with the /cube command (as arguments), use it directly.

If no problem was provided, check the current conversation for a problem the user has been discussing. If one is clearly identifiable, confirm it with the user before proceeding.

If no problem is identifiable, prompt:

> **What problem would you like to put inside The Cube?**
>
> Describe the problem, challenge, or decision you're facing. Be as specific as possible -- the sharper the input, the sharper the analysis.

Wait for the user's response before proceeding. Do NOT generate the analysis until you have a confirmed problem.

---

### STEP 1: CORE LOCK

Before any rotation begins, crystallize the problem into a precise statement. This is the **Core** -- the immovable center of the cube that every face, edge, and corner rotates around.

Output:
```
## THE CORE

**Problem:** [1-2 sentence crystallized problem statement]
**Stakes:** [What is at risk if this is not solved]
**Current Frame:** [How the problem is currently being thought about -- this is what The Cube will break out of]
**Domain:** [Technical | Business | Personal | Creative | Strategic | Hybrid]
**Time Sensitivity:** [Immediate | Short-term | Long-term | Undefined]
```

---

### STEP 2: FACE SCAN (Positions 1-6 -- Individual Framework Analyses)

Apply each framework independently to the Core. Each analysis should be substantive (a focused paragraph of 4-8 sentences). No generic advice -- every sentence must directly address THIS problem. End each face with a Key Insight line.

#### Face 1 -- INVERSION [F]
**Self-prompt:** "How would I guarantee this problem gets worse? What actions, assumptions, or inactions would make failure certain?"
- List 3-5 specific ways to make the problem worse
- Identify what each inverted scenario reveals about what to protect or avoid
- Name the number one thing that must NOT happen

#### Face 2 -- FIRST PRINCIPLES [B]
**Self-prompt:** "What are the actual, verifiable truths here? What assumptions am I carrying that I haven't verified?"
- Strip to 3-5 foundational truths (things verifiable independently)
- Identify 2-3 inherited assumptions that may be false
- Name what the problem actually is when stripped of all assumptions

#### Face 3 -- STEELMANNING [L]
**Self-prompt:** "What is the strongest, most rational argument for why this problem cannot or should not be solved?"
- Build a rigorous case against solving the problem
- Identify what the steelman reveals about hidden costs or trade-offs
- Assess: can the steelman be defeated? If not, what does that mean?

#### Face 4 -- SECOND-ORDER THINKING [R]
**Self-prompt:** "If I solve this problem, what new problems does the solution create? Map 2-3 levels deep."
- For each plausible solution, trace: Solution -> 2nd-order effect -> 3rd-order effect
- Identify which second-order effects are worse than the original problem
- Name any solutions that look good at first order but collapse at second or third

#### Face 5 -- PRE-MORTEM [U]
**Self-prompt:** "It is [timeframe appropriate to the problem] from now. This effort has completely failed. What happened?"
- Write 3-5 specific, named failure modes (not vague "risks")
- For each failure mode: how likely? How detectable before it is too late?
- Identify the single most dangerous failure mode (highest impact x lowest detectability)

#### Face 6 -- BOUNDARY CONDITIONS [D]
**Self-prompt:** "What happens at zero? At infinity? With 1000x scale? With one day to solve it? With unlimited resources?"
- Test the problem at 5 extremes: zero, 10x, 1000x, time-constrained, resource-unlimited
- Identify which assumptions break at the boundaries
- Name what the problem is actually made of (what survives all boundary tests)

After completing all 6 faces, display the Complexity Assessment (see UX Protocol above), then the Phase 1 transition marker.

---

### STEP 3: EDGE ROTATIONS (Positions 7-18 -- Adjacent-Face Cross-Analyses)

Each edge is where two adjacent faces meet on the cube. The insight comes from the INTERSECTION -- what does combining these two lenses reveal that neither alone would? Each edge analysis should be a focused paragraph (3-5 sentences) targeting the emergent cross-insight. End each with a Key Insight line. Cross-reference earlier positions where relevant.

#### Edge F-U: "The Autopsy" (Inversion + Pre-Mortem) [Position 7]
*What makes it worse + it is already dead. Double failure lens.*
**Prompt:** "If we deliberately made this worse AND it already failed -- what is the overlap between 'how to guarantee failure' and 'what actually killed it'?"

#### Edge F-R: "The Cascade" (Inversion + Second-Order) [Position 8]
*What makes it worse + ripple effects.*
**Prompt:** "What are the second-order effects of the INVERTED scenario? When the worst version plays out, what chain reactions follow?"

#### Edge F-D: "The Stress Test" (Inversion + Boundary) [Position 9]
*What makes it worse + pushed to extremes.*
**Prompt:** "Take the inverted (worst-case) version and push it to boundary conditions. What breaks first? What never breaks even in the worst extreme?"

#### Edge F-L: "Devil's Advocate" (Inversion + Steelmanning) [Position 10]
*What makes it worse + strongest case against solving.*
**Prompt:** "Build the strongest case that making this problem worse is actually the correct strategic move. Where does this argument have genuine merit?"

#### Edge B-U: "Foundation Check" (First Principles + Pre-Mortem) [Position 11]
*Fundamental truths + failure modes.*
**Prompt:** "Which first principle is the actual failure point? If the project dies, which foundational truth was ignored or which turned out to be wrong?"

#### Edge B-R: "The Projection" (First Principles + Second-Order) [Position 12]
*Fundamental truths + downstream effects.*
**Prompt:** "Starting from first principles only, what downstream consequences does everyone miss because they are reasoning from assumptions instead?"

#### Edge B-D: "Bedrock Test" (First Principles + Boundary) [Position 13]
*Fundamental truths + extremes.*
**Prompt:** "At extreme scale, resources, or time, which first principles still hold? Which ones were actually just contextual assumptions disguised as fundamentals?"

#### Edge B-L: "The Challenge" (First Principles + Steelmanning) [Position 14]
*Fundamental truths + strongest counter-case.*
**Prompt:** "Steelman against each first principle you identified. Which 'fundamental truths' can be successfully challenged? What does that reveal?"

#### Edge U-L: "The Fortress" (Pre-Mortem + Steelmanning) [Position 15]
*Failure modes + case against solving.*
**Prompt:** "The project is dead AND the strongest argument says it should not have been attempted. Where do these two conclusions reinforce each other?"

#### Edge U-R: "The Domino Map" (Pre-Mortem + Second-Order) [Position 16]
*Failure modes + chain reactions.*
**Prompt:** "For each failure mode, map the second-order chain reaction. Which failure modes create the worst cascades?"

#### Edge D-L: "The Pressure Test" (Boundary + Steelmanning) [Position 17]
*Extremes + strongest opposition.*
**Prompt:** "At boundary conditions, does the steelman case get stronger or weaker? Does 'this should not be solved' become more or less true at extremes?"

#### Edge D-R: "The Horizon Scan" (Boundary + Second-Order) [Position 18]
*Extremes + downstream effects.*
**Prompt:** "At extreme scale, what second-order effects emerge that do not exist at normal scale? What becomes catastrophic only at the boundaries?"

---

### STEP 4: AXIS TENSIONS (Positions 19-21 -- Opposite-Face Dialectics)

The three axes of the cube connect opposite faces. These create the deepest tensions -- thesis vs antithesis. Each axis analysis should be a substantial paragraph (4-6 sentences) exploring the productive tension between opposing frameworks. End each with a Key Insight line.

#### X-Axis: "The Mirror" (Inversion x First Principles) [Position 19]
*Destruction vs Construction. What you must avoid vs what you must build from.*
**Prompt:** "Place what Inversion revealed (how to fail) directly against what First Principles revealed (what is actually true). The gap between these two defines the actual problem space. What lives in that gap?"

#### Y-Axis: "The Crucible" (Pre-Mortem x Boundary Conditions) [Position 20]
*Temporal failure vs Structural failure. How it dies vs where it breaks.*
**Prompt:** "Pre-Mortem names HOW it fails over time. Boundary Conditions name WHERE it breaks structurally. Overlay these two maps. Where do temporal failure modes and structural breaking points coincide? Those intersections are the critical vulnerabilities."

#### Z-Axis: "The Paradox" (Steelmanning x Second-Order Thinking) [Position 21]
*Resistance vs Consequences. The best reason not to solve it vs what happens when you do.*
**Prompt:** "The steelman says 'do not solve this.' Second-order thinking says 'if you solve it, here is what happens next.' Do the consequences of solving validate or invalidate the steelman? Is the resistance justified by the downstream effects, or is the resistance itself the problem?"

---

### STEP 5: CORNER ROTATIONS (Positions 22-29 -- Triple-Framework Analyses)

Each corner is where three faces meet on the cube. These are the most complex analysis points -- three frameworks applied simultaneously. Each corner analysis should be a focused paragraph (3-5 sentences) identifying the triangulated insight. End each with a Key Insight line. Cross-reference freely.

On the physical cube, each corner selects exactly one framework from each opposite pair (one from F/B, one from U/D, one from L/R). This ensures maximum dimensional coverage with no redundancy.

#### Corner FUL: "The Gauntlet" (Inversion + Pre-Mortem + Steelmanning) [Position 22]
*Make it worse + it is dead + it should not be solved. Triple adversity.*
**Prompt:** "Subject the problem to maximum hostile scrutiny. What survives being simultaneously inverted, killed, and argued against? Whatever survives The Gauntlet is the irreducible core of why this problem matters."

#### Corner FUR: "The Avalanche" (Inversion + Pre-Mortem + Second-Order) [Position 23]
*Make it worse + it is dead + chain reactions. Total failure cascade.*
**Prompt:** "Map the complete failure cascade: inversion triggers failure modes, failure modes cascade through second-order effects. What does the total avalanche look like? What is at the bottom when everything has fallen?"

#### Corner FDL: "The Siege" (Inversion + Boundary + Steelmanning) [Position 24]
*Make it worse + extremes + strongest opposition. Maximum adversity at scale.*
**Prompt:** "At extreme conditions, with the strongest argument against solving and every incentive to make it worse -- what remains worth doing? What action is justified even in this worst-case scenario?"

#### Corner FDR: "The Labyrinth" (Inversion + Boundary + Second-Order) [Position 25]
*Make it worse + extremes + downstream effects. Complexity explosion.*
**Prompt:** "At boundary conditions, with everything going wrong, trace the second-order effects. Where does complexity explode? Where does it unexpectedly simplify? The simplification points are the actual leverage."

#### Corner BUL: "The Tribunal" (First Principles + Pre-Mortem + Steelmanning) [Position 26]
*Fundamental truth + it is dead + strongest case against. Judgment day.*
**Prompt:** "First principles say this is true. Pre-mortem says it failed anyway. Steelman says it should not have been tried. Put these three on trial together. What is the verdict? Who is right?"

#### Corner BUR: "The Oracle" (First Principles + Pre-Mortem + Second-Order) [Position 27]
*Fundamental truth + it is dead + chain reactions. What should have been foreseen.*
**Prompt:** "Starting from verified first principles, with perfect hindsight on how it died and full visibility into chain reactions -- what should have been done differently from the very start? What does the Oracle see that we could not?"

#### Corner BDL: "The Anvil" (First Principles + Boundary + Steelmanning) [Position 28]
*Fundamental truth + extremes + strongest opposition. What is unbreakable.*
**Prompt:** "Hammer first principles at extreme conditions while the steelman argues against them. What is genuinely unbreakable? These are your load-bearing truths -- everything else is negotiable."

#### Corner BDR: "The Telescope" (First Principles + Boundary + Second-Order) [Position 29]
*Fundamental truth + extremes + downstream effects. The long view.*
**Prompt:** "From first principles, at maximum scale, trace all downstream effects into the far future. What does the long view reveal that the near view hides? What looks urgent now but is irrelevant at scale, and what looks trivial now but dominates at scale?"

---

### STEP 6: RETURN TO HOME -- Grand Synthesis [Position 30]

The cube has completed all 29 rotations and returns to Position 1. The problem has been seen from every face, every edge, every axis, and every corner. Now synthesize.

#### 6a. Executive Summary
Before the detailed synthesis, provide a 4-6 line executive summary that a decision-maker could read in 30 seconds. This should answer: What is the problem really? What should be done? What is the biggest risk? Structure it as:

```
### EXECUTIVE SUMMARY
**The real problem:** [1 sentence -- how the problem looks AFTER the cube vs before]
**The clearest path:** [1 sentence -- the top recommendation]
**The biggest risk:** [1 sentence -- from Pre-Mortem and Corner analyses]
**The key trade-off:** [1 sentence -- what you give up on every path]
```

#### 6b. Pattern Detection
Identify 3-5 recurring themes that emerged across multiple rotation points. What kept showing up regardless of which frameworks were combined? These patterns are signal, not noise.

#### 6c. Convergence Map
Where did multiple rotations independently arrive at the same insight or recommendation? List each convergent finding and which positions (by number and name) support it. High-convergence insights are your highest-confidence findings.

#### 6d. Divergence Report
Where did rotations contradict each other? What tensions remain genuinely unresolved? These unresolved tensions are often where the actual decision point lives -- the thing the decider must choose rather than analyze.

#### 6e. Blind Spot Report
What did only ONE specific rotation reveal? These are insights that would be invisible from any other angle -- the unique value of multi-dimensional analysis. Flag these prominently even if they seem minor; single-source insights are often the most surprising and actionable.

#### 6f. Solution Ranking
Rank the top 3-5 candidate solutions/paths forward by:

| Solution | Robustness (x/30) | Survived Gauntlet? | Survived Anvil? | 2nd-Order Safe? | Anti-Fragile? |
|----------|-------------------|---------------------|-----------------|-----------------|---------------|
| ...      | ...               | ...                 | ...             | ...             | ...           |

For each ranked solution, provide:
- **What it solves** -- which aspects of the Core problem this addresses
- **What it does not solve** -- what remains after this path is taken
- **Key risks** -- the most dangerous failure modes from Pre-Mortem and Corner analyses
- **Critical dependencies** -- what must be true for this solution to work
- **Confidence level** -- how many independent rotations support this path

#### 6g. Simulation Scenarios
For each top-ranked solution, define a testable scenario an agent (human or AI) could simulate:

- **Setup:** Initial conditions, constraints, and assumptions
- **Action:** What the solution does, step by step
- **Success Criteria:** Measurable indicators that this path is working
- **Failure Signals:** Early warning signs that this path is failing
- **Kill Switch:** The specific signal that means abandon this path immediately
- **Time Horizon:** When you would expect to see results or failure

#### 6h. Final Verdict
Two to three paragraphs of synthesis:
1. What the problem actually is (now that you have seen it from every angle -- contrast with the Current Frame from the Core Lock)
2. The single clearest path forward, and why
3. What remains uncertain and what the next decision point is

---

## OUTPUT FORMAT

Structure the full report exactly as follows. Use the cube geometry markers (Face, Edge, Axis, Corner) and position numbers to maintain the spatial metaphor. Every analysis point must be specific to the problem -- no generic framework descriptions, no filler, no restating the framework definition.

```
+-------------------------------------------+
|           T H E   C U B E                 |
|     Multi-Dimensional Problem Solver      |
|          v1.0  |  30 Positions            |
+-------------------------------------------+

# THE CUBE -- Analysis Report
## Problem: [short title]
### Rotation Date: [date]
### Total Analysis Points: 30

---

## THE CORE
**Problem:** [crystallized statement]
**Stakes:** [what is at risk]
**Current Frame:** [how it is being thought about now]
**Domain:** [classification]
**Time Sensitivity:** [classification]

---

--- PHASE 1: FACE SCAN --- Positions 1-6 --- Progress 0/30

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

COMPLEXITY ASSESSMENT: [rating]
Depth: [X] | Risk Density: [X] | Cascade Potential: [X] | Boundary Sensitivity: [X]

---
PHASE 1 COMPLETE | 6/30 positions analyzed
[one sentence summary]
Rotating to Phase 2...
---

--- PHASE 2: EDGE ROTATIONS --- Positions 7-18 --- Progress 6/30

### [F-U] Position 7: The Autopsy
[cross-analysis]
**Key Insight:** [one sentence]

### [F-R] Position 8: The Cascade
[cross-analysis]
**Key Insight:** [one sentence]

### [F-D] Position 9: The Stress Test
[cross-analysis]
**Key Insight:** [one sentence]

### [F-L] Position 10: Devil's Advocate
[cross-analysis]
**Key Insight:** [one sentence]

### [B-U] Position 11: Foundation Check
[cross-analysis]
**Key Insight:** [one sentence]

### [B-R] Position 12: The Projection
[cross-analysis]
**Key Insight:** [one sentence]

### [B-D] Position 13: Bedrock Test
[cross-analysis]
**Key Insight:** [one sentence]

### [B-L] Position 14: The Challenge
[cross-analysis]
**Key Insight:** [one sentence]

### [U-L] Position 15: The Fortress
[cross-analysis]
**Key Insight:** [one sentence]

### [U-R] Position 16: The Domino Map
[cross-analysis]
**Key Insight:** [one sentence]

### [D-L] Position 17: The Pressure Test
[cross-analysis]
**Key Insight:** [one sentence]

### [D-R] Position 18: The Horizon Scan
[cross-analysis]
**Key Insight:** [one sentence]

---
PHASE 2 COMPLETE | 18/30 positions analyzed
[one sentence summary]
Rotating to Phase 3...
---

--- PHASE 3: AXIS TENSIONS --- Positions 19-21 --- Progress 18/30

### [X-Axis] Position 19: The Mirror
[dialectic analysis]
**Key Insight:** [one sentence]

### [Y-Axis] Position 20: The Crucible
[dialectic analysis]
**Key Insight:** [one sentence]

### [Z-Axis] Position 21: The Paradox
[dialectic analysis]
**Key Insight:** [one sentence]

---
PHASE 3 COMPLETE | 21/30 positions analyzed
[one sentence summary]
Rotating to Phase 4...
---

--- PHASE 4: CORNER ROTATIONS --- Positions 22-29 --- Progress 21/30

### [FUL] Position 22: The Gauntlet
[triple analysis]
**Key Insight:** [one sentence]

### [FUR] Position 23: The Avalanche
[triple analysis]
**Key Insight:** [one sentence]

### [FDL] Position 24: The Siege
[triple analysis]
**Key Insight:** [one sentence]

### [FDR] Position 25: The Labyrinth
[triple analysis]
**Key Insight:** [one sentence]

### [BUL] Position 26: The Tribunal
[triple analysis]
**Key Insight:** [one sentence]

### [BUR] Position 27: The Oracle
[triple analysis]
**Key Insight:** [one sentence]

### [BDL] Position 28: The Anvil
[triple analysis]
**Key Insight:** [one sentence]

### [BDR] Position 29: The Telescope
[triple analysis]
**Key Insight:** [one sentence]

---
PHASE 4 COMPLETE | 29/30 positions analyzed
[one sentence summary]
Returning to home position...
---

--- PHASE 5: RETURN TO HOME --- Position 30 --- Progress 29/30

### EXECUTIVE SUMMARY
**The real problem:** [1 sentence]
**The clearest path:** [1 sentence]
**The biggest risk:** [1 sentence]
**The key trade-off:** [1 sentence]

### Pattern Detection
[recurring themes]

### Convergence Map
[where rotations agree, citing position numbers]

### Divergence Report
[where rotations conflict]

### Blind Spot Report
[single-rotation-only insights]

### Solution Ranking
[table + details for top 3-5 solutions]

### Simulation Scenarios
[agent-testable scenarios for each top solution]

### Final Verdict
[synthesis paragraphs]

---
ROTATION COMPLETE | 30/30 positions analyzed
The Cube has returned to home position.
---
```

## REPORT COMPLETION

After generating the full report, display:

```
---
Want to go deeper?
  /cube-face [framework]  -- Deep dive into one framework
  /cube-feedback           -- Rate this analysis to improve The Cube
  /cube-quick              -- Run a fast 10-point scan on a different problem
---
```

## IMPORTANT EXECUTION NOTES

1. **Specificity over generality.** Every sentence in the report must be about THIS problem. If a sentence could apply to any problem, delete it.
2. **Cross-analysis is not re-analysis.** Edge, Axis, and Corner rotations must produce NEW insights from the combination -- not restate what the individual faces already said.
3. **The Core is immovable.** Never redefine the problem mid-rotation. The Core is the constant; the frameworks rotate around it.
4. **Name names.** Failure modes should be specific ("the vendor contract expires before migration completes"), not vague ("vendor risk"). Solutions should be actionable ("renegotiate the contract with a 90-day extension clause"), not abstract ("manage vendor relationships better").
5. **Honor the geometry.** The cube's structure is not decorative. Opposite faces create tension. Adjacent faces create synergy. Corners triangulate. Follow the geometry.
6. **The report is the product.** Format it cleanly. Use the position numbers. Make it navigable. A user should be able to jump to any rotation point and understand it independently.
7. **Key Insights are the spine.** A reader should be able to read ONLY the 29 Key Insight lines and the Executive Summary and walk away with a meaningful understanding of the problem.
8. **Cross-references are the connective tissue.** They show the user that the cube is not 30 isolated analyses but an interconnected geometric structure where insights reinforce and challenge each other.

</cube>
