---
name: cube-coding
description: "The Cube (Coding Stack) - Six engineering problem-solving frameworks mapped to a Rubik's cube: Decomposition, Root Cause Analysis, Constraint Mapping, Trace the Execution, Edge Case Analysis, Minimum Viable Proof. Full 30-position rotation for technical problems."
---

<cube-coding>

# THE CUBE -- Coding Stack

You are executing The Cube with the **Coding Stack**. Six software engineering problem-solving frameworks mapped to a Rubik's cube. The technical problem goes at the core. The cube rotates through 30 positions -- faces, edges, axes, corners -- producing a comprehensive multi-dimensional engineering analysis.

Each framework attacks the bug, the architecture decision, or the performance problem from a different direction. The rotations force you out of whatever debugging rabbit hole or design bias you are stuck in.

---

## CUBE GEOMETRY

```
              +---------------+
             /   FACE 5      /|
            /  EDGE CASE    / |
           /  Analysis (U) /  |
          +---------------+   |
          |               |   |
 FACE 3   |   FACE 1      | FACE 4
CONSTRAINT|  DECOMP-      | TRACE THE
 MAPPING  |  OSITION      | EXECUTION
  (L)     |    (F)        |  (R)
          |               |   +
          |               |  / FACE 2
          |               | / ROOT CAUSE
          |               |/ Analysis (B)
          +---------------+
              FACE 6
           MIN VIABLE
            PROOF (D)
```

### THE SIX FACES

**FACE 1 -- DECOMPOSITION (F/Front)**
Complex systems become solvable when broken into units small enough to reason about completely. If you cannot hold the whole problem in your head, you are guessing. Recursive subdivision until each piece has a single responsibility and a testable boundary.
Self-prompt: "What are the atomic, independently testable pieces of this problem? Where are the boundaries?"

**FACE 2 -- ROOT CAUSE ANALYSIS (B/Back)**
The first explanation is almost always a symptom. Real causes live 3-5 layers deeper, usually in assumptions made during design, not implementation. Keep asking "why?" until you hit a decision, a missing requirement, or a process gap.
Self-prompt: "Why does this happen? And why does THAT happen? What is the root cause, not just the location where the symptom manifests?"

**FACE 3 -- CONSTRAINT MAPPING (L/Left)**
Every problem has hard constraints (physics, API rate limits, business rules) and assumed constraints (convention, habit, legacy decisions). Most "impossible" problems have a false constraint hiding in plain sight. List every constraint, mark each as proven or assumed, and challenge the assumed ones.
Self-prompt: "What are ALL the constraints? Which ones have I actually verified? Which am I just assuming?"

**FACE 4 -- TRACE THE EXECUTION (R/Right)**
Mental models of code are wrong more often than the code itself. Do not theorize about what happens -- follow the actual execution path with real data. Step-debug, add logging, manually walk the call stack with concrete inputs.
Self-prompt: "What ACTUALLY happens when this code runs? Not what I think happens -- what does the debugger/log/trace show?"

**FACE 5 -- EDGE CASE ANALYSIS (U/Up)**
Code breaks at boundaries. Null, empty, max int, concurrent access, timezone midnight, unicode, negative zero, off-by-one. The happy path is where you test; the edges are where you fail.
Self-prompt: "What happens at null? At empty? At max? At zero? When two things happen at the same time? What inputs has nobody tested?"

**FACE 6 -- MINIMUM VIABLE PROOF (D/Down)**
Opinion-driven debates end when you build a 20-line proof. The smallest possible experiment that confirms or kills a hypothesis saves weeks of wrong-direction work. Isolate the riskiest assumption, build only what tests it, and measure.
Self-prompt: "What is the riskiest assumption? What is the smallest thing I can build that proves or disproves it?"

### OPPOSITE FACE PAIRS (Rotation Axes)

- **X-Axis (F<>B):** Decomposition x Root Cause -- **Breadth vs Depth**. Decomposition breaks the system into all its atomic pieces — a horizontal map of every component and interface. Root Cause Analysis follows one thread deep, asking "why?" five times until you hit the decision or missing requirement that started the problem. One gives you the whole picture; the other gives you the root. The tension reveals whether you need to understand the system or understand the cause — and which you should do first.

- **Y-Axis (U<>D):** Edge Cases x MVP Proof -- **What Breaks vs What Works**. Edge Case Analysis is pessimistic — it probes every boundary (null, empty, max, concurrent) looking for where the code fails. MVP Proof is optimistic — it builds the smallest possible experiment to confirm the core theory works. One asks "where does it break?" The other asks "does it work at all?" The tension reveals whether you need to build confidence that the approach is viable, or build confidence that it won't fall apart.

- **Z-Axis (L<>R):** Constraint Mapping x Trace Execution -- **Theoretical Limits vs Actual Behavior**. Constraint Mapping lists what SHOULD happen — every hard limit, business rule, and assumed boundary the system must respect. Trace the Execution shows what DOES happen — the actual runtime path with real data. Most bugs live in the gap between these. The tension reveals where the code violates constraints nobody documented, or respects constraints that no longer apply.

---

## EXECUTION PROTOCOL

Follow the same UX Protocol as the core Cube: opening banner (with "Coding Stack" subtitle), progress indicators, Key Insight tags, phase transitions, cross-references, Complexity Assessment.

### STEP 0: PROBLEM INTAKE

If the user provided a technical problem, use it. Otherwise prompt:

> **What technical problem would you like to put inside The Cube?**
>
> Describe the bug, architecture question, performance issue, or design decision. Include: language/stack, what you expected, what actually happens, and what you have already tried.

### STEP 1: CORE LOCK

```
## THE CORE

**Problem:** [1-2 sentence crystallized technical problem]
**Stakes:** [What breaks if this is not solved -- data loss, downtime, tech debt, deadline]
**Current Theory:** [What you think is going on -- the assumption The Cube will stress-test]
**Technical Context:** [Language/framework | System/component | Scale | Environment]
```

### STEP 2: FACE SCAN (Positions 1-6)

4-8 sentences each. End with Key Insight.

**[F] Position 1: Decomposition** -- Break this problem into its atomic pieces. What are the independent units? Where are the boundaries? What are the interfaces between pieces?
**[B] Position 2: Root Cause Analysis** -- Apply the 5 Whys. Start from the symptom and dig. Why does this happen? And why does THAT happen? Where do you hit a design decision or a missing requirement?
**[L] Position 3: Constraint Mapping** -- List every constraint (technical, business, time, resource). Mark each as PROVEN (verified) or ASSUMED. Challenge every assumed constraint.
**[R] Position 4: Trace the Execution** -- Walk through the actual execution path with concrete data. What happens at each step? Where does reality diverge from your mental model?
**[U] Position 5: Edge Case Analysis** -- Test every boundary: null, empty, max, zero, concurrent, unicode, timezone, negative. Which edges have not been tested? Which break?
**[D] Position 6: Minimum Viable Proof** -- What is the smallest experiment that would prove or disprove your current theory? Define it: inputs, expected output, actual output, what each result means.

Display Complexity Assessment after all 6 faces.

---

### STEP 3: EDGE ROTATIONS (Positions 7-18)

3-5 sentences each. End with Key Insight.

#### [F-U] Position 7: "The Fragmentation Test" (Decomposition + Edge Cases)
*Decomposition breaks the system into pieces. Edge Case Analysis tests each piece at its boundaries — null, empty, max, concurrent. Together — systematic boundary testing of every component and every interface between them.*
**Prompt:** "For each decomposed component, what are the edge cases? Which component breaks first at the boundaries? Are the interfaces between components handling edge cases correctly?"

#### [F-R] Position 8: "The Walk-Through" (Decomposition + Trace Execution)
*Decomposition gives you the map. Trace the Execution walks the actual path with real data. Together — follow the real execution through each component and watch where reality diverges from the architecture diagram.*
**Prompt:** "Walk the execution path through each decomposed component. Does data flow correctly across boundaries? Where does the trace show something unexpected in a specific component?"

#### [F-D] Position 9: "The Building Blocks" (Decomposition + MVP Proof)
*Decomposition identifies the pieces. MVP Proof tests the riskiest one in isolation. Together — find the component with the most dangerous assumption and prove it works (or doesn't) before touching anything else.*
**Prompt:** "Which decomposed component contains the riskiest assumption? Build a proof for that one component alone. If the smallest piece works in isolation, what does that tell you about where the problem actually lives?"

#### [F-L] Position 10: "The Puzzle Board" (Decomposition + Constraint Mapping)
*Decomposition shows the pieces. Constraint Mapping shows the rules each piece must follow. Together — reveal which components are over-constrained by assumed limitations vs. which have real hard limits.*
**Prompt:** "For each component, which constraints are binding? Are any components over-constrained by assumed limitations? Does decomposition reveal that a constraint applies to one piece but not others?"

#### [B-U] Position 11: "The Fault Line" (Root Cause + Edge Cases)
*Root Cause digs deep to find the underlying flaw. Edge Cases probe the boundaries where flaws are exposed. Together — many root causes hide behind edge conditions, working fine at normal inputs but cracking at the boundaries.*
**Prompt:** "Is the root cause only triggered at specific edge conditions? Many root causes hide behind edge cases -- the system works fine at normal inputs but the underlying flaw is exposed at the boundaries."

#### [B-R] Position 12: "The Debugger" (Root Cause + Trace Execution)
*Root Cause asks 'why?' five levels deep. Trace the Execution follows the actual code path. Together — at each 'why' level, trace the real execution to find where the root cause first becomes visible in the running system.*
**Prompt:** "Combine 5 Whys with execution tracing. At each 'why' level, trace the actual execution. Where in the actual code/data path does the root cause first become visible?"

#### [B-D] Position 13: "The Hypothesis Test" (Root Cause + MVP Proof)
*Root Cause proposes a theory. MVP Proof tests it with the smallest possible experiment. Together — if you can't reproduce the root cause in a minimal case, you haven't actually found the root cause.*
**Prompt:** "Write the minimal reproduction case that proves the root cause you identified. If you cannot reproduce it minimally, you have not found the root cause. What is the smallest possible test?"

#### [B-L] Position 14: "The Hidden Wall" (Root Cause + Constraint Mapping)
*Root Cause digs for the 'why'. Constraint Mapping lists every limit. Together — sometimes the root cause IS a constraint being hit (rate limit, memory ceiling, connection pool). The 'bug' is actually the system working as designed against an invisible wall.*
**Prompt:** "Is a constraint itself the root cause? Sometimes the problem is not a bug -- it is a hard limit being hit (rate limit, memory ceiling, database connection pool). Is the 'bug' actually a constraint violation?"

#### [U-L] Position 15: "The Corner Case" (Edge Cases + Constraint Mapping)
*Edge Cases test boundaries. Constraint Mapping lists assumed rules. Together — what happens when an edge case input violates a constraint nobody documented? The system assumes inputs are always positive, strings always ASCII, connections always available — until they aren't.*
**Prompt:** "At the boundaries, which assumed constraints break? Does the system assume inputs are always positive, strings are always ASCII, connections are always available? What edge case violates a constraint nobody documented?"

#### [U-R] Position 16: "The Failure Path" (Edge Cases + Trace Execution)
*Edge Cases identify dangerous inputs. Trace the Execution follows what actually happens when they hit. Together — trace the code path when it receives null, empty, or max. Does it handle it? Or does it silently corrupt state?*
**Prompt:** "Take each edge case and trace the execution path. Where does the code go when it receives null, empty, or max? Is there error handling? Does it silently corrupt state?"

#### [D-L] Position 17: "The Spike" (MVP Proof + Constraint Mapping)
*MVP Proof builds the smallest possible experiment. Constraint Mapping ensures it respects real limits. Together — if the proof only works by ignoring a real constraint, the solution is dead on arrival no matter how elegant.*
**Prompt:** "Build the MVP proof, but respect all PROVEN constraints. If the proof works within real constraints, the solution is viable. If it only works by ignoring a real constraint, you need a different approach."

#### [D-R] Position 18: "The Proof Trace" (MVP Proof + Trace Execution)
*MVP Proof builds it small. Trace the Execution verifies it end to end. Together — build the minimal proof, then trace every step to confirm it actually does what you think it does, not what you hope it does.*
**Prompt:** "Build the minimal proof, then trace its execution path completely. Does the proof actually do what you think it does? Does the trace confirm your theory or reveal something unexpected?"

---

### STEP 4: AXIS TENSIONS (Positions 19-21)

4-6 sentences each.

#### [X-Axis] Position 19: "Depth vs Breadth" (Decomposition x Root Cause)
*Break it apart vs dig to the bottom.*
**Prompt:** "Decomposition breaks the system into pieces. Root Cause digs one path deep. Which approach reveals more for THIS problem? Should you map the whole system first, or drill into the most suspicious component immediately? What does the choice between breadth and depth tell you about how well you understand the problem?"

#### [Y-Axis] Position 20: "The Confidence Spectrum" (Edge Cases x MVP Proof)
*What might break vs what definitely works.*
**Prompt:** "Edge Case Analysis asks 'where does it fail?' MVP Proof asks 'does the core work?' These are opposite ends of confidence. For THIS problem -- do you need to prove it works, or prove it does not break? Which direction builds confidence faster?"

#### [Z-Axis] Position 21: "The Reality Check" (Constraint Mapping x Trace Execution)
*Theoretical limits vs actual behavior.*
**Prompt:** "Constraints say what SHOULD happen. Trace shows what DOES happen. How wide is the gap? Are constraints being violated silently? Is the code respecting constraints that no longer apply? Where does theory diverge from reality?"

---

### STEP 5: CORNER ROTATIONS (Positions 22-29)

3-5 sentences each.

#### [FUL] Position 22: "The Full Spec" (Decomposition + Edge Cases + Constraint Mapping)
*Every piece, every edge, every constraint.*
**Prompt:** "For each component, map every edge case against every constraint. This is the complete specification of what the system SHOULD handle. Where are the gaps? What has never been specified?"

#### [FUR] Position 23: "The Stress Test" (Decomposition + Edge Cases + Trace Execution)
*Break down, edge test, trace every path.*
**Prompt:** "Decompose the system, hit each component with edge cases, and trace the execution through every path. This is the most thorough testing approach possible. What breaks? What survives? Where does the trace go somewhere unexpected under stress?"

#### [FDL] Position 24: "The Architecture Spike" (Decomposition + MVP Proof + Constraint Mapping)
*Smallest pieces, real constraints, proven working.*
**Prompt:** "For the riskiest component, build an MVP proof that respects all proven constraints. If this spike works, the architecture is viable. If it fails -- what does the failure tell you about whether the architecture can ever work?"

#### [FDR] Position 25: "The Prototype" (Decomposition + MVP Proof + Trace Execution)
*Build small pieces, trace end to end.*
**Prompt:** "Build the minimal proof for each critical component, then trace data flow end-to-end across component boundaries. Does the system work as a whole when each piece works in isolation? Where do integration assumptions break?"

#### [BUL] Position 26: "The Bug Hunt" (Root Cause + Edge Cases + Constraint Mapping)
*Find the cause, test the edges, check the constraints.*
**Prompt:** "The root cause has been identified. Now test: does this root cause explain ALL the edge case failures? Does it relate to a constraint violation? If the root cause does not explain every anomaly, there may be multiple root causes."

#### [BUR] Position 27: "The Incident Report" (Root Cause + Edge Cases + Trace Execution)
*What caused it, where it breaks, how it happened.*
**Prompt:** "Write the complete incident report: root cause (why), edge conditions that triggered it (when), and the execution trace (how). This is the full picture. What systemic change prevents recurrence?"

#### [BDL] Position 28: "The Minimal Fix" (Root Cause + MVP Proof + Constraint Mapping)
*Smallest change that addresses root cause within constraints.*
**Prompt:** "What is the absolute smallest change that fixes the root cause while respecting all proven constraints? Not the ideal refactor. The minimal surgical change. Define it precisely."

#### [BDR] Position 29: "The Surgical Fix" (Root Cause + MVP Proof + Trace Execution)
*Root cause -> minimal proof -> verified execution.*
**Prompt:** "Fix the root cause with the minimal change, then trace execution to verify. Does the fix work? Does it introduce new issues? Does the trace confirm the problem is actually resolved, not just masked?"

---

### STEP 6: RETURN TO HOME -- Grand Synthesis [Position 30]

**6a. Executive Summary** -- 4 lines: the real technical problem, clearest fix/approach, biggest risk, key trade-off.
**6b. Pattern Detection** -- Themes across rotations.
**6c. Convergence Map** -- Where positions agree (especially important: do Root Cause and Trace agree on where the problem is?).
**6d. Divergence Report** -- Where frameworks conflict (e.g., Decomposition suggests one component but Trace shows the problem is in the integration).
**6e. Blind Spot Report** -- Single-rotation-only insights.
**6f. Solution Ranking** -- Rank top 3 approaches:
- The minimal fix (smallest change, least risk)
- The proper fix (addresses root cause fully)
- The systemic fix (prevents this class of problem)
For each: code-level description, risk, effort, what it does NOT fix.
**6g. Test Plan** -- For each solution:
- Specific test cases (including edge cases from Position 5)
- How to verify the fix (trace from Position 4)
- Regression risks
- Monitoring to add
**6h. Final Verdict** -- The recommended approach and why, with specific next steps.

---

## OUTPUT FORMAT

```
+-------------------------------------------+
|           T H E   C U B E                 |
|            Coding Stack                   |
|          v1.0  |  30 Positions            |
+-------------------------------------------+
```

Same progress indicators, Key Insight tags, phase transitions, and cross-references as the core Cube.

## EXECUTION NOTES

1. **Be concrete.** "There might be a race condition" is not an insight. "The getUserProfile() call on line 247 reads from cache while the updateProfile() on line 312 writes directly to the database, and there is no invalidation between them" is an insight.
2. **Code references matter.** When possible, reference specific files, functions, line numbers, endpoints, tables, or queries.
3. **The trace is truth.** When Trace the Execution contradicts any other framework, trust the trace. Mental models are wrong more often than running code.
4. **Minimal fixes are usually right.** The synthesis should resist the urge to propose a large refactor when a targeted fix addresses the root cause. Save the refactor for when it is actually justified.
5. **Test plans are mandatory.** Every proposed solution must include how to verify it works and how to check it does not break something else.

</cube-coding>
