---
name: cube-enhance
description: "The Cube Enhancement Scan — Analyze any Claude Code skill through 16 Cube positions to find blind spots, failure modes, and improvements. Usage: /cube-enhance [skill-name-or-path] [--sales|--marketing|--coding|--enterprise|--creative|--founder|--adversarial] [--draft]"
---

<cube-enhance>

# THE CUBE -- Skill Enhancement Scan (16 Positions)

You are executing The Cube Enhancement Scan -- a meta-skill that analyzes any other Claude Code skill through 16 Cube positions to find blind spots, failure modes, and actionable improvements. The "problem" placed at the core is the target skill itself: its design, its instructions, its assumptions, its failure modes, and its gaps.

This is the skill that improves every other skill.

Where a standard Cube rotation puts a problem at the core and rotates six cognitive frameworks around it, the Enhancement Scan puts a skill file at the core and rotates the selected stack's frameworks around its design. Each position asks: what does this framework reveal about how the skill works, where it breaks, and what it misses?

The output is a vulnerability report, a blind spot map, and prioritized enhancement recommendations. With the --draft flag, a complete enhanced rewrite of the skill is produced.

---

## SKILL DISCOVERY PROTOCOL

Parse the user's arguments to locate the target skill file. Follow this fallback chain strictly and stop at the first match:

### Step 1: Direct File Path
If the argument ends in `.md`, treat it as a direct file path. Read the file. If it does not exist, report the error and stop.

### Step 2: Global Skills Directory -- Standard Format
Check `~/.claude/skills/[name].md`. If found, use it.

### Step 3: Global Skills Directory -- Folder Format
Check `~/.claude/skills/[name]/SKILL.md`. If found, use it.

### Step 4: Project-Local Skills Directory
Check `.claude/skills/[name].md` in the current project root. If found, use it.

### Step 5: Fuzzy Match
If no exact match was found, list all `.md` files in `~/.claude/skills/` and `.claude/skills/` (both locations). Present the closest matches by name similarity:

> **No skill found matching "[name]". Did you mean one of these?**
> - [closest match 1]
> - [closest match 2]
> - [closest match 3]
>
> Provide the exact name or full path and try again.

Stop and wait for the user's response.

### Step 6: Failure -- No Match
If the fuzzy match yields nothing close, report the error:

> **Could not find skill "[name]".**
> Searched:
> - ~/.claude/skills/[name].md
> - ~/.claude/skills/[name]/SKILL.md
> - .claude/skills/[name].md
>
> Provide the full file path to the skill you want to analyze.

Stop and wait.

### Step 7: No Argument Provided
If no skill name or path was provided at all, list all installed skills from both `~/.claude/skills/` and `.claude/skills/`:

> **Which skill would you like to enhance?**
>
> **Global skills (~/.claude/skills/):**
> - [list of .md files and folders with SKILL.md]
>
> **Project skills (.claude/skills/):**
> - [list of .md files]
>
> Provide a skill name or path.

Stop and wait.

---

## SKILL PARSING INSTRUCTIONS

Once the target skill file is located, read its entire contents. Extract the following by comprehension (do not assume YAML frontmatter structure -- many skills use varied formats):

- **Name:** The skill's name or identifier
- **Description:** What it claims to do, in its own words
- **Trigger Conditions:** What invokes it (slash command, pattern match, keyword detection)
- **Workflow Steps:** The ordered sequence of actions it performs
- **Output Format:** What it produces (report, code, file, conversation, etc.)
- **Domain:** What subject area it operates in
- **Dependencies:** External tools, APIs, MCPs, files, or context it requires
- **Scope:** What inputs it accepts and what it explicitly does not handle

If any of these cannot be determined from the file, note it as "[not specified]" -- this itself is a finding.

---

## STACK SELECTION LOGIC

The Enhancement Scan can use any Cube stack's frameworks. Auto-select based on the target skill's domain, or accept a user override via flag.

**Auto-selection rules (based on target skill domain):**
- Sales, deals, pipeline, revenue, prospecting --> Sales stack
- Marketing, positioning, growth, brand, content --> Marketing stack
- Engineering, code, debugging, architecture, DevOps --> Coding stack
- General, meta, productivity, workflow, unclear --> Core stack (default)

**User override flags:**
| Flag | Stack |
|------|-------|
| --sales | Sales |
| --marketing | Marketing |
| --coding | Coding |
| --enterprise | Enterprise |
| --creative | Creative |
| --founder | Founder |
| --adversarial | Adversarial |
| (none) | Auto-select per rules above |

State the selection explicitly in the Core Lock:
> **Analysis Stack:** [Stack name] -- [reason: auto-selected because the skill covers [domain] / user-specified via --[flag]]

---

## THE CORE

Before any rotation begins, lock the target skill into the Core.

```
## THE CORE
**Target Skill:** [name from frontmatter or file]
**Skill Purpose:** [1-2 sentence summary of what the skill does]
**Skill Workflow:** [numbered list of main steps the skill follows]
**Output Type:** [what it produces -- report, code, file, conversation, etc.]
**Current Scope:** [inputs accepted | what it explicitly does not handle]
**Analysis Stack:** [stack name and selection rationale]
```

---

## PHASE 1: FACE SCAN (Positions 1-6)

Apply the selected stack's six frameworks to the SKILL'S DESIGN -- not to a problem the skill would analyze, but to the skill itself as the subject. Each analysis should be a focused paragraph (4-6 sentences) targeting what this framework reveals about the skill's construction.

The self-prompts below use the Core stack as the default example. When using a different stack, substitute the corresponding framework and adapt the self-prompt to skill analysis. The analytical goal is the same: examine the skill through each of the six lenses.

### [F] Position 1: Inversion
**Self-prompt:** "How would I design this skill to guarantee it produces bad output? What instructions would make it fail reliably? What is missing that, if absent, makes failure inevitable?"
- Identify 3-5 design choices that would guarantee poor output
- Note which of these anti-patterns are actually present (even partially) in the skill
- Name the single design flaw most likely to cause bad results

**Key Insight:** [one sentence]

### [B] Position 2: First Principles
**Self-prompt:** "What assumptions does this skill's design make that have not been tested? What does the skill take for granted about its users, inputs, or environment?"
- List 3-5 assumptions embedded in the skill's instructions
- Classify each: verified, inherited, untested, or questionable
- Identify what the skill actually needs vs what it assumes it needs

**Key Insight:** [one sentence]

### [L] Position 3: Steelmanning
**Self-prompt:** "What is the strongest argument that this skill should not exist, or that its approach is fundamentally wrong? Is there a simpler, better way to accomplish the same goal?"
- Build a genuine case against the skill's approach
- Identify what the steelman reveals about hidden costs or over-engineering
- Assess whether the steelman can be defeated

**Key Insight:** [one sentence]

### [R] Position 4: Second-Order Thinking
**Self-prompt:** "When this skill runs successfully and produces its intended output, what new problems does that output create for the user? What happens downstream?"
- Trace 2-3 levels deep: output --> user action --> consequence --> further consequence
- Identify second-order effects the skill does not account for
- Name any case where the skill's success creates a worse problem than inaction

**Key Insight:** [one sentence]

### [U] Position 5: Pre-Mortem
**Self-prompt:** "A user ran this skill and the output was completely useless. What happened? Be specific -- name the exact failure mode, not a vague risk."
- List 3-5 specific, named failure scenarios
- For each: what triggered it, and would the user know the output was bad?
- Identify the single most dangerous failure (high impact, low detectability)

**Key Insight:** [one sentence]

### [D] Position 6: Boundary Conditions
**Self-prompt:** "What happens when this skill receives trivially simple input? Extremely complex input? Ambiguous input? Input outside its domain? No input at all?"
- Test the skill's design at five extremes: trivial, complex, ambiguous, out-of-domain, empty
- Identify which boundary cases the skill handles vs ignores
- Name what the skill is actually designed for when you strip away the edge cases

**Key Insight:** [one sentence]

```
---
PHASE 1 COMPLETE | 6/16 positions analyzed
[One sentence: the most important design vulnerability discovered so far]
Rotating to Phase 2...
---
```

---

## PHASE 2: EDGE SCAN (Positions 7-12)

Six edges selected for maximum relevance to skill quality analysis. Each edge combines two adjacent frameworks to produce a cross-insight that neither alone would reveal. Each analysis should be a focused paragraph (3-5 sentences). Cross-reference earlier positions where relevant.

When using a non-Core stack, substitute the corresponding frameworks from that stack. The edge names and analytical goals below describe the INTENT of each combination -- adapt the prompt to the active stack's frameworks while preserving the cross-analysis purpose.

### [F-U] Position 7: The Autopsy (Inversion + Pre-Mortem)
**Self-prompt:** "The skill produced bad output (Inversion) AND the user's workflow failed because of it (Pre-Mortem). Where do 'how to guarantee failure' and 'what actually killed it' overlap? That overlap is the skill's critical vulnerability."
- Identify the failure modes that the skill's own design makes more likely
- Name the single most dangerous design-failure intersection

**Key Insight:** [one sentence]

### [F-D] Position 8: The Stress Test (Inversion + Boundary)
**Self-prompt:** "Take the worst-case design flaws (Inversion) and push them to boundary conditions (Boundary). What inputs break this skill in ways the author did not anticipate?"
- Identify specific input patterns that exploit design weaknesses
- Distinguish between graceful degradation and silent failure

**Key Insight:** [one sentence]

### [B-U] Position 9: Foundation Check (First Principles + Pre-Mortem)
**Self-prompt:** "Which foundational assumption in this skill's design is the actual failure point? If the skill fails, which 'truth' it relies on turned out to be false?"
- Connect each assumption from Position 2 to specific failure modes from Position 5
- Name the assumption most likely to cause real-world failure

**Key Insight:** [one sentence]

### [B-D] Position 10: Bedrock Test (First Principles + Boundary)
**Self-prompt:** "At extreme inputs -- trivial, massive, ambiguous -- which of the skill's design assumptions still hold and which were actually just normal-case heuristics disguised as principles?"
- Test each core assumption against boundary conditions
- Identify assumptions that only work in the "happy path" range

**Key Insight:** [one sentence]

### [B-L] Position 11: The Challenge (First Principles + Steelmanning)
**Self-prompt:** "Steelman against each design assumption. Is this skill's fundamental approach the wrong one? Is there a completely different architecture that would serve the same purpose better?"
- Challenge the skill's foundational design decisions
- Assess whether the skill solves the right problem in the right way

**Key Insight:** [one sentence]

### [D-R] Position 12: The Horizon Scan (Boundary + Second-Order)
**Self-prompt:** "At scale -- many users, many runs, diverse inputs -- what second-order problems does this skill create that do not exist when used occasionally by one person?"
- Map what happens when the skill is used heavily, repeatedly, or by diverse users
- Identify emergent problems that only appear at scale or over time

**Key Insight:** [one sentence]

```
---
PHASE 2 COMPLETE | 12/16 positions analyzed
[One sentence: the cross-analysis pattern that emerged most strongly]
Rotating to Phase 3...
---
```

---

## PHASE 3: AXIS TENSIONS (Positions 13-15)

The three rotation axes connect opposite faces, creating dialectical tension applied to skill design trade-offs. Each analysis should be a substantial paragraph (4-6 sentences). These are the deepest analytical positions.

When using a non-Core stack, substitute the corresponding axis pairs and their named tensions from that stack.

### [X-Axis] Position 13: The Mirror (Inversion x First Principles)
**Self-prompt:** "Place the skill's failure modes (what makes it produce bad output) against its foundational truths (what it must be built on). The gap between these defines the skill's actual design space. What lives in that gap -- what is the skill not addressing that sits between 'how it fails' and 'what it needs'?"

**Key Insight:** [one sentence]

### [Y-Axis] Position 14: The Crucible (Pre-Mortem x Boundary Conditions)
**Self-prompt:** "Pre-Mortem names HOW the skill fails for users over time. Boundary Conditions name WHERE it breaks structurally. Overlay these two maps. Where do usage-pattern failures and input-boundary failures coincide? Those intersections are the critical design vulnerabilities."

**Key Insight:** [one sentence]

### [Z-Axis] Position 15: The Paradox (Steelmanning x Second-Order Thinking)
**Self-prompt:** "The steelman says this skill should not exist or should work differently. Second-order thinking shows what happens when it works exactly as designed. Do the downstream consequences validate or invalidate the steelman? Is the case against the skill proven right by the skill's own success?"

**Key Insight:** [one sentence]

```
---
PHASE 3 COMPLETE | 15/16 positions analyzed
[One sentence: the deepest tension revealed by the axis dialectics]
Rotating to Synthesis...
---
```

---

## PHASE 4: ENHANCEMENT SYNTHESIS (Position 16)

Synthesize all 15 prior positions into a four-part deliverable.

### Part A: Vulnerability Report

| # | Vulnerability | Severity | Source Positions | Suggested Fix |
|---|--------------|----------|-----------------|---------------|
| 1 | [specific vulnerability] | Critical / High / Med / Low | P[n], P[n] | [concrete fix] |
| 2 | ... | ... | ... | ... |
| ... | ... | ... | ... | ... |

**Severity definitions:**
- **Critical:** The skill will produce wrong or harmful output in common scenarios
- **High:** The skill fails silently in realistic edge cases
- **Medium:** The skill works but misses significant value or creates downstream friction
- **Low:** Minor improvement opportunity; current design is functional

### Part B: Blind Spot Map

**Input Blind Spots:** What inputs does the skill not consider, handle, or validate?

**Process Blind Spots:** What steps in the workflow have unexamined assumptions or missing error handling?

**Output Blind Spots:** What does the output fail to include, format, or communicate that the user needs?

**Downstream Blind Spots:** What happens after the user receives the output that the skill does not account for?

### Part C: Enhancement Recommendations

Provide 3-5 specific, actionable recommendations. Each must include:

1. **[Priority 1/2/3] [Concrete instruction]**
   - What to add, remove, or modify -- specific enough to act on
   - Rationale: which positions (by number and name) support this change
   - What improves if this is implemented

2. **[Priority 1/2/3] [Concrete instruction]**
   - ...

(Continue for 3-5 recommendations, ordered by priority.)

**Priority definitions:**
- **Priority 1:** Fixes a critical or high vulnerability; should be implemented immediately
- **Priority 2:** Addresses a meaningful gap; significant improvement to skill quality
- **Priority 3:** Polish or hardening; nice to have, not urgent

### Part D: Enhanced Skill Draft (--draft flag ONLY)

**This section is ONLY produced when the user includes the --draft flag.** By default, the Enhancement Scan outputs Parts A-C only.

If --draft is present:
- Produce a complete rewrite of the target skill file
- Mark every change with an `[ENHANCED]` comment explaining what changed and why
- Preserve the skill's original voice, structure, and intentional design choices
- Do not change things that are working well -- only address findings from the scan
- Output the full enhanced skill file in a code block, ready to save

If --draft is NOT present, display instead:
> **Want the enhanced version?** Run `/cube-enhance [skill-name] --draft` to produce a complete rewrite with all recommended changes applied.

---

## OUTPUT FORMAT

Structure the full report as follows:

```
+-------------------------------------------+
|           T H E   C U B E                 |
|       Skill Enhancement Scan              |
|     16 Positions  |  [Stack Name]         |
+-------------------------------------------+

# ENHANCEMENT SCAN
## Target: [skill name]
## Source: [file path]
### Date: [date]

---

## THE CORE
**Target Skill:** [name]
**Skill Purpose:** [summary]
**Skill Workflow:** [numbered steps]
**Output Type:** [what it produces]
**Current Scope:** [inputs | exclusions]
**Analysis Stack:** [stack and rationale]

---

--- PHASE 1: FACE SCAN --- Positions 1-6 --- Progress 0/16

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
PHASE 1 COMPLETE | 6/16 positions analyzed
[one sentence summary]
Rotating to Phase 2...
---

--- PHASE 2: EDGE SCAN --- Positions 7-12 --- Progress 6/16

### [F-U] Position 7: The Autopsy
[cross-analysis]
**Key Insight:** [one sentence]

### [F-D] Position 8: The Stress Test
[cross-analysis]
**Key Insight:** [one sentence]

### [B-U] Position 9: Foundation Check
[cross-analysis]
**Key Insight:** [one sentence]

### [B-D] Position 10: Bedrock Test
[cross-analysis]
**Key Insight:** [one sentence]

### [B-L] Position 11: The Challenge
[cross-analysis]
**Key Insight:** [one sentence]

### [D-R] Position 12: The Horizon Scan
[cross-analysis]
**Key Insight:** [one sentence]

---
PHASE 2 COMPLETE | 12/16 positions analyzed
[one sentence summary]
Rotating to Phase 3...
---

--- PHASE 3: AXIS TENSIONS --- Positions 13-15 --- Progress 12/16

### [X-Axis] Position 13: The Mirror
[dialectic]
**Key Insight:** [one sentence]

### [Y-Axis] Position 14: The Crucible
[dialectic]
**Key Insight:** [one sentence]

### [Z-Axis] Position 15: The Paradox
[dialectic]
**Key Insight:** [one sentence]

---
PHASE 3 COMPLETE | 15/16 positions analyzed
[one sentence summary]
Rotating to Synthesis...
---

--- PHASE 4: ENHANCEMENT SYNTHESIS --- Position 16 --- Progress 15/16

### Part A: Vulnerability Report
[table]

### Part B: Blind Spot Map
[four categories]

### Part C: Enhancement Recommendations
[3-5 prioritized recommendations]

### Part D: Enhanced Skill Draft
[full rewrite if --draft, or prompt to re-run with --draft]

---
ENHANCEMENT SCAN COMPLETE | 16/16 positions analyzed
---
```

### Footer

After the scan, display:

```
---
ENHANCEMENT SCAN COMPLETE | 16/16 positions analyzed
Next steps:
  /cube-enhance [skill] --draft   Produce enhanced version
  /cube-face [framework] [skill]  Deep dive one framework
  /cube-feedback                  Rate this analysis
---
```

---

## EDGE CASES

### Target skill does not exist
Follow the Skill Discovery Protocol. Report the error with searched paths. Do not guess or fabricate a skill analysis.

### Target is another Cube skill
Valid and encouraged. Use Core stack (default) unless overridden. Acknowledge the meta-layer explicitly: "This is The Cube analyzing its own geometry. The Enhancement Scan will look for structural weaknesses in the Cube's own framework."

### Very short skill (<50 lines)
Note the thinness as a finding. Steelmanning (Position 3) becomes especially important -- is the brevity a strength (simplicity) or a weakness (missing instructions)? Flag under-specification as a vulnerability.

### Very long skill (>500 lines)
Assess whether length reflects thoroughness or bloat. Check for redundancy, contradictory instructions, and sections that could be simplified. Flag over-specification if the skill is so detailed it constrains Claude unnecessarily.

### External dependencies (MCP servers, APIs, file system)
Focus Pre-Mortem (Position 5) on dependency failure modes. What happens when the MCP is unavailable? When the API returns errors? When the expected file structure does not exist? Dependency brittleness is a common critical vulnerability.

### No argument provided
Follow Step 7 of the Skill Discovery Protocol: list all installed skills and prompt the user to choose.

### Self-analysis: `/cube-enhance cube-enhance`
Valid. Should find real weaknesses. Do not manufacture praise or pull punches. The Enhancement Scan should be able to identify genuine blind spots in its own design -- if it cannot, that itself is a vulnerability.

---

## EXECUTION NOTES

1. **Read the full skill file before analyzing.** Do not guess at the skill's contents, structure, or purpose. Load and comprehend the entire file before beginning the Face Scan.

2. **Vulnerabilities must be specific.** "The skill could be better" is not a vulnerability. "The skill does not handle the case where the user provides a URL instead of a file path, which will cause it to silently produce an analysis of nothing" is a vulnerability.

3. **Recommendations must reference specific sections.** "Add better error handling" is not actionable. "Add an input validation step after the SKILL PARSING section (line ~45) that checks whether the extracted workflow has at least 2 steps, and if not, warns the user that the skill may be too thin to analyze meaningfully" is actionable.

4. **Respect intentional design choices.** The skill's author made decisions for reasons you may not fully understand. Recommend improvements; do not override the skill's voice, philosophy, or approach. Distinguish between "this is a bug" and "I would have done this differently."

5. **If the target skill is excellent, say so.** Do not manufacture problems to fill the report. A short vulnerability table with low-severity items and a note that the skill is well-constructed is a valid and honest output. Forced criticism is worse than honest praise.

6. **Cross-references connect positions.** When an Edge or Axis position reinforces or contradicts a Face finding, say so explicitly: "This confirms Position 5's finding that..." or "This contradicts the assumption identified in Position 2..."

7. **The Enhancement Scan is advisory.** The output is a recommendation, not a mandate. The user decides what to implement. The --draft flag produces a starting point for revision, not a final product.

</cube-enhance>
