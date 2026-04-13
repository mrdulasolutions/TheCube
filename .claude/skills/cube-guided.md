---
name: cube-guided
description: "The Cube Guided Mode - Interactive phase-by-phase rotation with checkpoints. Supports all stacks: core (default), sales, marketing, coding. Usage: /cube-guided [--sales|--marketing|--coding] [problem]"
---

<cube-guided>

# THE CUBE -- Guided Mode (Interactive)

You are executing The Cube in Guided Mode. This runs the same 30-position rotation as the full Cube, but pauses after each phase for user input.

## STACK SELECTION

Check the user's arguments for a stack flag. If none specified, default to Core.

| Flag | Stack | Frameworks |
|------|-------|-----------|
| (none) | Core | Inversion, First Principles, Steelmanning, Second-Order, Pre-Mortem, Boundary |
| --sales | Sales | Frame Control, SPIN, Rapport, Challenger, Need Satisfaction, Pain Qualification |
| --marketing | Marketing | JTBD, Positioning, StoryBrand, Blue Ocean, Crossing the Chasm, Growth Loops |
| --coding | Coding | Decomposition, Root Cause, Constraint Mapping, Trace Execution, Edge Cases, MVP Proof |

Use the frameworks, edge names, axis names, and corner names from the selected stack's full skill file (cube.md, cube-sales.md, cube-marketing.md, or cube-coding.md). The guided mode protocol below is the same for every stack.

The user can:

- **Continue** to the next phase
- **Drill deeper** into a specific position from the current phase
- **Skip** a phase they don't need
- **Adjust the Core** if earlier phases revealed a reframe
- **Stop early** and get a partial synthesis

This mode is ideal for complex problems where the user wants to think between phases, or when they want to steer the analysis based on what emerges.

---

## STEP 0: PROBLEM INTAKE

Same as full Cube. If the user provided a problem, use it. If not, prompt for one.

Display the banner:
```
+-------------------------------------------+
|           T H E   C U B E                 |
|           Guided Mode                     |
|     Interactive  |  30 Positions          |
+-------------------------------------------+
```

---

## STEP 1: CORE LOCK

Present the Core Lock:
```
## THE CORE

**Problem:** [crystallized statement]
**Stakes:** [what is at risk]
**Current Frame:** [how it is being thought about]
**Domain:** [classification]
**Time Sensitivity:** [classification]
```

Then ask:
> **Does this Core Lock capture your problem accurately?**
> - If yes, say "go" or "continue" to begin the Face Scan
> - If you want to adjust it, tell me what to change
> - Type "reframe: [new framing]" to restate the problem

Wait for user confirmation before proceeding.

---

## STEP 2: FACE SCAN (Positions 1-6)

Run all 6 face analyses exactly as in the full Cube. Include Key Insight lines after each position.

After completing all 6 faces, display the Complexity Assessment and then the checkpoint:

```
---
PHASE 1 COMPLETE | 6/30 positions analyzed
[one sentence summary of what the Face Scan revealed]

CHECKPOINT: What would you like to do?
  [continue]    -- Proceed to Phase 2: Edge Rotations (12 positions)
  [drill: N]    -- Go deeper on Position N (e.g., "drill: 3" for Steelmanning)
  [skip]        -- Skip Edge Rotations, go to Axis Tensions
  [reframe]     -- Adjust the Core based on what you've seen
  [stop]        -- Get a synthesis of what we have so far
---
```

Wait for user input.

**If "drill: N":** Run the corresponding /cube-face deep dive protocol (4-phase analysis) for that framework. Then return to the checkpoint.

**If "reframe: [text]":** Update the Core Lock. Note the change explicitly: "Core updated. Original frame: [old]. New frame: [new]." Then return to checkpoint or continue as requested.

**If "stop":** Jump to the Early Synthesis protocol (see below).

---

## STEP 3: EDGE ROTATIONS (Positions 7-18)

Run all 12 edge analyses. Include Key Insight lines and cross-references.

Checkpoint after completion:
```
---
PHASE 2 COMPLETE | 18/30 positions analyzed
[one sentence summary]

CHECKPOINT: What would you like to do?
  [continue]    -- Proceed to Phase 3: Axis Tensions (3 positions)
  [drill: N]    -- Go deeper on Position N
  [highlight]   -- Which edges surprised you? (helps focus remaining analysis)
  [skip]        -- Skip to Corner Rotations
  [reframe]     -- Adjust the Core
  [stop]        -- Get a synthesis of what we have so far
---
```

**If "highlight: [positions]":** Note which edges the user found most valuable. Use this to weight the synthesis later -- these are the angles that resonated with the user's understanding.

---

## STEP 4: AXIS TENSIONS (Positions 19-21)

Run all 3 axis analyses.

Checkpoint:
```
---
PHASE 3 COMPLETE | 21/30 positions analyzed
[one sentence summary]

CHECKPOINT: What would you like to do?
  [continue]    -- Proceed to Phase 4: Corner Rotations (8 positions)
  [drill: N]    -- Go deeper on an axis
  [skip]        -- Skip to Synthesis
  [stop]        -- Get a synthesis now
---
```

---

## STEP 5: CORNER ROTATIONS (Positions 22-29)

Run all 8 corner analyses.

Checkpoint:
```
---
PHASE 4 COMPLETE | 29/30 positions analyzed
[one sentence summary]

Ready for Grand Synthesis. Continue? [continue/stop]
---
```

---

## STEP 6: GRAND SYNTHESIS (Position 30)

Run the full synthesis protocol from the main Cube: Executive Summary, Pattern Detection, Convergence Map, Divergence Report, Blind Spot Report, Solution Ranking, Simulation Scenarios, Final Verdict.

```
---
ROTATION COMPLETE | 30/30 positions analyzed
The Cube has returned to home position.

Want to explore further?
  /cube-face [framework]  -- Deep dive a specific framework
  /cube-feedback           -- Rate this analysis
---
```

---

## EARLY SYNTHESIS PROTOCOL

If the user stops early (before all 30 positions), provide a partial synthesis:

1. **Positions Analyzed:** List which positions were completed
2. **Positions Skipped:** List what was not analyzed and what it would have added
3. **Partial Pattern Detection:** Patterns from available data only
4. **Best Available Path:** Top recommendation based on what was analyzed, with explicit caveat about gaps
5. **Recommended Continuation:** If the user wants to resume later, which positions to prioritize

Mark the synthesis clearly as partial:
```
NOTE: This synthesis is based on [X]/30 positions.
Skipped phases may contain insights that change these conclusions.
To complete the analysis, run /cube with the same problem.
```

---

## EXECUTION NOTES

1. **Guided Mode is conversational.** Between phases, the user should feel like they are steering the analysis, not just watching it run.
2. **Respect "stop."** When the user says stop, synthesize immediately. Do not pressure them to continue.
3. **Track user highlights.** If the user flags specific positions as surprising or valuable, weight those in the synthesis.
4. **Reframe carefully.** If the user reframes the Core mid-rotation, note it explicitly. Earlier positions were analyzed under the old frame -- acknowledge this in the synthesis.
5. **Drill responsibly.** A drill should add genuine depth, not just repeat the face analysis with more words. Use the /cube-face 4-phase protocol.

</cube-guided>
