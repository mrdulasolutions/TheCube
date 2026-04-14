---
name: cube-hats
description: "The Cube (Thinking Hats Stack) - Edward de Bono's Six Thinking Hats mapped to a Rubik's cube: White Hat/Information, Red Hat/Intuition, Green Hat/Creativity, Blue Hat/Process, Black Hat/Caution, Yellow Hat/Value. Full 30-position rotation for any problem."
---

<cube-hats>

# THE CUBE -- Thinking Hats Stack

You are executing The Cube with the **Thinking Hats Stack**. Edward de Bono's Six Thinking Hats mapped to a Rubik's cube. The problem goes at the core. The cube rotates through 30 positions -- faces, edges, axes, corners -- producing a comprehensive multi-dimensional analysis through six distinct thinking modes.

This stack is uniquely accessible -- no domain expertise required, works on any problem. De Bono's key insight was that people fail not from lack of intelligence but from mixing thinking modes. Each hat separates a different mode of thought so it can be applied with full concentration.

---

## CUBE GEOMETRY

```
              +---------------+
             /   FACE 5      /|
            /  BLACK HAT     / |
           /  Caution  (U)  /  |
          +---------------+   |
          |               |   |
 FACE 3   |   FACE 1      | FACE 4
GREEN HAT |  WHITE HAT    | BLUE HAT
Creativity| Information   | Process
  (L)     |    (F)        |  (R)
          |               |   +
          |               |  / FACE 2
          |               | / RED HAT
          |               |/ Intuition (B)
          +---------------+
              FACE 6
           YELLOW HAT
           Value  (D)
```

### THE SIX FACES

**FACE 1 -- WHITE HAT / INFORMATION (F) -- Edward de Bono**
Pure facts, data, and information. What do we know? What do we need to know? What data is missing? No opinions, no interpretations -- just objective information gathering. The White Hat demands you separate what you know from what you think you know.
*"What information do we have? What information do we need? What information is missing?"*
Self-prompt: "What are the facts? What data do I actually have vs. what am I assuming? What information is missing that I need before deciding?"

**FACE 2 -- RED HAT / INTUITION (B) -- Edward de Bono**
Feelings, hunches, gut reactions, and emotions -- with no requirement to justify them. The Red Hat gives permission to say "this feels wrong" without needing a reason. It captures the emotional intelligence that logical analysis misses. 30-second instinct check: what does your gut say?
*"My feeling is that... My gut tells me... My intuition says..."*
Self-prompt: "What is my gut telling me right now? What feels right? What feels wrong? If I had to decide in 30 seconds with no data, what would I choose?"

**FACE 3 -- GREEN HAT / CREATIVITY (L) -- Edward de Bono**
New ideas, alternatives, possibilities, and creative solutions. The Green Hat demands creative effort -- not just "does anyone have ideas?" but active generation of alternatives. Every idea is valid during Green Hat thinking. Judgment is suspended. Lateral thinking, provocations, and "what if?" questions rule.
*"What are the alternatives? What if we did the opposite? What possibilities haven't we considered?"*
Self-prompt: "What alternatives exist that nobody has mentioned? What if we did the complete opposite? What crazy idea might actually work? What haven't we tried?"

**FACE 4 -- BLUE HAT / PROCESS (R) -- Edward de Bono**
Meta-thinking -- managing the thinking process itself. The Blue Hat sets the agenda, defines the focus, decides which hat to wear next, summarizes progress, and ensures the thinking stays productive. It is the conductor of the orchestra, not a musician.
*"What thinking is needed here? Where are we now? What should we do next?"*
Self-prompt: "What is the actual question we're trying to answer? Are we thinking about the right thing? What mode of thinking do we need right now? What have we established so far?"

**FACE 5 -- BLACK HAT / CAUTION (U) -- Edward de Bono**
Critical judgment, logical reasons why something won't work, risks, dangers, and weaknesses. The Black Hat is NOT negativity -- it is the most valuable hat in business because it prevents disasters. It asks: what can go wrong? Why might this fail? What are the logical flaws?
*"The difficulties are... The risks are... The danger is... It doesn't fit because..."*
Self-prompt: "What can go wrong? What are the risks? What are the logical weaknesses? Why might this fail? What am I not seeing that could hurt us?"

**FACE 6 -- YELLOW HAT / VALUE (D) -- Edward de Bono**
Positive judgment, benefits, value, and optimistic assessment. The Yellow Hat requires active effort to find value -- not blind optimism, but constructive exploration of why something might work. What are the benefits? What is the best-case scenario? Why is this worth doing?
*"The benefits are... The value is... This could work because..."*
Self-prompt: "What are the benefits? Why might this work? What is the best realistic outcome? What value does this create that we haven't articulated?"

### OPPOSITE FACE PAIRS (Rotation Axes)

- **X-Axis (F<>B):** White Hat x Red Hat -- **Data vs Gut**. White Hat demands pure objective facts with no emotion. Red Hat demands pure subjective feeling with no justification. One says "show me the numbers." The other says "I don't care about the numbers, something feels off." The tension reveals where data and intuition diverge -- which is often exactly where the real decision lives. When the facts say yes but the gut says no (or vice versa), that gap contains critical information. De Bono insisted both are legitimate thinking modes; the error is mixing them.

- **Y-Axis (U<>D):** Black Hat x Yellow Hat -- **Risk vs Opportunity**. Black Hat finds every flaw, danger, and reason for failure. Yellow Hat finds every benefit, value, and reason for success. One is the brake; the other is the accelerator. The tension reveals whether an idea is genuinely good (survives Black Hat scrutiny) or just attractive (only survives Yellow Hat). Most teams over-index on one -- the axis forces both. De Bono noted that Western culture over-relies on the Black Hat; the Yellow Hat is the hardest for most people.

- **Z-Axis (L<>R):** Green Hat x Blue Hat -- **Creativity vs Control**. Green Hat generates wild possibilities with no judgment. Blue Hat organizes, sequences, and disciplines the thinking process. One says "let's explore everything." The other says "let's focus on what matters." The tension reveals whether you need more ideas or better discipline -- more divergence or more convergence. De Bono designed the Blue Hat to prevent Green Hat sessions from spiraling into chaos, and Green Hat sessions to prevent Blue Hat discipline from killing creativity.

---

## EXECUTION PROTOCOL

Follow the same UX Protocol as the core Cube: opening banner (with "Thinking Hats Stack" subtitle), progress indicators, Key Insight tags after every position, phase transition markers, cross-references, and Complexity Assessment after Face Scan.

### STEP 0: PROBLEM INTAKE

If the user provided a problem with the command, use it. Otherwise prompt:

> **What problem would you like to put inside The Cube?**
>
> Describe the decision, challenge, strategy question, or situation you need to think through. De Bono's hats work on any problem -- business, personal, technical, creative. The more specific the context, the sharper the analysis.

### STEP 1: CORE LOCK

```
## THE CORE

**Situation:** [1-2 sentence crystallized problem]
**Stakes:** [What is at risk -- resources, relationships, time, opportunity]
**Current Thinking:** [How you are currently approaching this -- the thinking mode The Cube will break out of]
**Context:** [Domain | Scale | Timeline | Key players]
```

### STEP 2: FACE SCAN (Positions 1-6)

Apply each thinking hat independently to the problem. 4-8 sentences each, ending with Key Insight.

**[F] Position 1: White Hat / Information** -- What are the facts? What data do we actually have? What are we assuming without evidence? What information is missing?
**[B] Position 2: Red Hat / Intuition** -- What does the gut say? What feelings arise? What hunches deserve attention? 30-second instinct check -- no justification required.
**[L] Position 3: Green Hat / Creativity** -- What alternatives exist? What if we did the opposite? What crazy ideas might work? What provocations generate new directions?
**[R] Position 4: Blue Hat / Process** -- What is the real question? Are we thinking about the right problem? What thinking mode do we need? What have we established so far?
**[U] Position 5: Black Hat / Caution** -- What can go wrong? What are the risks? What are the logical weaknesses? Why might this fail?
**[D] Position 6: Yellow Hat / Value** -- What are the benefits? Why might this work? What is the best realistic outcome? What value has gone unrecognized?

Display Complexity Assessment after all 6 faces.

---

### STEP 3: EDGE ROTATIONS (Positions 7-18)

3-5 sentences each. Focus on the emergent cross-insight from combining two thinking modes. End with Key Insight.

#### [F-U] Position 7: "The Audit" (White Hat + Black Hat)
*De Bono's Information meets his Caution -- you gather the facts, then stress-test every one of them. What data is weak? What numbers are assumptions dressed up as evidence?*
**Prompt:** "What facts do we have, and which of them are fragile? Where does the data fail under scrutiny? What risks hide inside our 'known' information?"

#### [F-R] Position 8: "The Briefing" (White Hat + Blue Hat)
*De Bono's Information meets his Process -- you inventory what you know, then decide what thinking mode is needed next. Facts inform the agenda; the agenda determines which facts matter.*
**Prompt:** "Given what we know and what we don't know, what is the right thinking process from here? What information should drive our next step? Where are we wasting time on the wrong data?"

#### [F-D] Position 9: "The Evidence of Value" (White Hat + Yellow Hat)
*De Bono's Information meets his Value -- you look at the data and find the upside. Not wishful thinking, but evidence-based optimism. What do the facts actually prove is working?*
**Prompt:** "What data supports a positive outcome? What evidence of value have we overlooked? Where do the facts point to opportunity rather than risk?"

#### [F-L] Position 10: "The Blank Canvas" (White Hat + Green Hat)
*De Bono's Information meets his Creativity -- you map what is known, then use the gaps as creative springboards. Missing data is not just a problem; it is an invitation to invent.*
**Prompt:** "What do the facts suggest that nobody has explored? Where does missing information create space for creative solutions? What new ideas emerge from what we actually know?"

#### [B-U] Position 11: "The Bad Feeling" (Red Hat + Black Hat)
*De Bono's Intuition meets his Caution -- your gut says something is wrong, and now you look for the logical evidence to support that feeling. Hunches become hypotheses.*
**Prompt:** "What feels wrong, and can we find logical reasons to support that feeling? What risks has our intuition detected that our analysis has missed? Where should we trust the discomfort?"

#### [B-R] Position 12: "The Compass Check" (Red Hat + Blue Hat)
*De Bono's Intuition meets his Process -- you check whether the emotional energy of the group is aligned with the thinking agenda. Is the process serving the people, or fighting them?*
**Prompt:** "What does the emotional temperature tell us about our thinking process? Are we forcing a process that doesn't fit the situation? What thinking mode does the group's energy actually call for?"

#### [B-D] Position 13: "The Enthusiasm Test" (Red Hat + Yellow Hat)
*De Bono's Intuition meets his Value -- you check whether the positive case generates genuine excitement or just polite agreement. Real value should produce real energy.*
**Prompt:** "Do the benefits actually excite us, or are we just going through the motions? Where does genuine enthusiasm point? What value proposition creates real emotional pull?"

#### [B-L] Position 14: "The Creative Spark" (Red Hat + Green Hat)
*De Bono's Intuition meets his Creativity -- feelings and hunches become fuel for idea generation. The Red Hat points the direction; the Green Hat runs with it.*
**Prompt:** "What feelings can we channel into creative ideas? Where does intuition suggest a direction that logic hasn't explored? What if we followed the strongest hunch and designed a solution around it?"

#### [U-L] Position 15: "The Constructive Critic" (Black Hat + Green Hat)
*De Bono's Caution meets his Creativity -- you identify what is wrong, then immediately generate ideas to fix it. Criticism becomes the first step of invention, not the last word.*
**Prompt:** "For every risk identified, what creative solution could address it? How do we turn weaknesses into design specifications? What if each problem is actually a constraint that drives a better idea?"

#### [U-R] Position 16: "The Risk Protocol" (Black Hat + Blue Hat)
*De Bono's Caution meets his Process -- you identify risks, then design a thinking process that accounts for them. Risk management becomes baked into how you think, not bolted on afterward.*
**Prompt:** "What risks should reshape how we approach this problem? Which dangers require a different thinking process? How should we change our decision-making sequence to address the biggest threats?"

#### [D-L] Position 17: "The Opportunity Engine" (Yellow Hat + Green Hat)
*De Bono's Value meets his Creativity -- you find what is valuable, then generate ideas to maximize it. Not just "this is good" but "how do we make this even better?"*
**Prompt:** "What is working, and how do we amplify it? What creative ideas could multiply the value we've identified? Where does the upside suggest new possibilities?"

#### [D-R] Position 18: "The Value Roadmap" (Yellow Hat + Blue Hat)
*De Bono's Value meets his Process -- you identify the benefits, then build a structured path to capture them. Optimism becomes a plan.*
**Prompt:** "What process would maximize the value we've identified? What is the step-by-step path to capture the upside? How do we organize our thinking to deliver on the positive potential?"

---

### STEP 4: AXIS TENSIONS (Positions 19-21)

4-6 sentences each exploring the dialectical tension between opposite hats.

#### [X-Axis] Position 19: "The Head vs Heart" (White Hat x Red Hat)
*Data vs Gut. Facts vs Feeling.*
**Prompt:** "De Bono's White Hat says: show me the data, strip away all emotion. His Red Hat says: trust the feeling, no justification needed. For THIS problem, where do data and intuition agree? More critically, where do they diverge? When the numbers say yes but the gut says no, which should you trust? Is the data incomplete, or is the intuition biased? The gap between what the facts show and what the gut feels -- that is where the real decision lives."

#### [Y-Axis] Position 20: "The Brake vs Accelerator" (Black Hat x Yellow Hat)
*Risk vs Opportunity. Why it will fail vs why it will succeed.*
**Prompt:** "De Bono's Black Hat asks: what can go wrong, what are the flaws, why will this fail? His Yellow Hat asks: what is the value, what are the benefits, why will this succeed? For THIS problem, can the idea survive the Black Hat's scrutiny? Or does it only survive under Yellow Hat optimism? De Bono observed that Western culture is addicted to the Black Hat -- we are trained to find flaws. The Yellow Hat is harder because it requires constructive effort. Which hat is this problem starved of?"

#### [Z-Axis] Position 21: "The Jazz vs Orchestra" (Green Hat x Blue Hat)
*Creativity vs Control. Divergence vs Convergence.*
**Prompt:** "De Bono's Green Hat says: explore everything, no idea is wrong, suspend all judgment. His Blue Hat says: focus, sequence, discipline -- manage the thinking. For THIS problem, do we need more jazz (creative freedom, wild ideas, lateral leaps) or more orchestra (structure, agenda, disciplined execution)? Are we suffering from too many ideas and no process, or too much process and no ideas? The Green Hat without Blue Hat is chaos. The Blue Hat without Green Hat is bureaucracy. Where is the balance point?"

---

### STEP 5: CORNER ROTATIONS (Positions 22-29)

3-5 sentences each. Each corner combines three hats -- one from each opposite pair on its respective axis.

#### [FUL] Position 22: "The Innovation Lab" (White Hat + Black Hat + Green Hat)
*You gather the data, identify the risks, then generate creative solutions. Evidence-based innovation with built-in risk awareness.*
**Prompt:** "What do the facts and risks tell us that could drive creative breakthroughs? Where does understanding the real constraints (White Hat data + Black Hat dangers) actually liberate the Green Hat to be more creative, not less? What innovation emerges from working within real limits?"

#### [FUR] Position 23: "The Strategic Review" (White Hat + Black Hat + Blue Hat)
*You gather the data, identify the risks, then design the process. The most analytical, disciplined combination -- due diligence at its finest.*
**Prompt:** "Given the facts (White Hat) and the risks (Black Hat), what is the right process (Blue Hat) for this situation? This is the boardroom combination -- rigorous, cautious, structured. What does it reveal about the right next step? Where is it too conservative?"

#### [FDL] Position 24: "The Bright Spot" (White Hat + Yellow Hat + Green Hat)
*You gather the data, find the value, then generate ideas to amplify it. Evidence-based optimism channeled into creative expansion.*
**Prompt:** "What facts support positive outcomes, and how do we creatively maximize that value? This is the entrepreneur's combination -- find what works in the data, then dream bigger. What ideas emerge from building on proven strengths?"

#### [FDR] Position 25: "The Business Case" (White Hat + Yellow Hat + Blue Hat)
*You gather the data, find the value, then build a structured plan. The clearest path from evidence to action.*
**Prompt:** "What do the facts and the benefits tell us, and what is the step-by-step process to capture that value? This is the project manager's combination -- evidence, upside, and a plan. What does a structured approach to the opportunity look like?"

#### [BUL] Position 26: "The Rebel's Warning" (Red Hat + Black Hat + Green Hat)
*Your gut says something is wrong, analysis confirms the risks, and now you generate creative escapes. Intuitive alarm plus creative problem-solving.*
**Prompt:** "Something feels wrong (Red Hat), and the risks are real (Black Hat). What creative alternatives (Green Hat) can we generate to escape the danger? This is the whistleblower's combination -- gut alarm, logical confirmation, creative pivot. What should we do differently?"

#### [BUR] Position 27: "The Course Correction" (Red Hat + Black Hat + Blue Hat)
*Your gut says something is off, analysis confirms the risks, and now you redesign the process. The most cautious combination in the cube.*
**Prompt:** "The intuition and the risk analysis are both flashing warning signs. What process changes are needed? This is the crisis manager's combination -- feel the danger, confirm it logically, then restructure the approach. What must change immediately?"

#### [BDL] Position 28: "The Dream Builder" (Red Hat + Yellow Hat + Green Hat)
*Your gut says yes, the value is clear, and creativity runs wild. Maximum generative energy -- the most expansive combination in the cube.*
**Prompt:** "The feeling is positive, the value is real, and imagination is unleashed. What could this become if nothing held it back? This is the visionary's combination -- enthusiasm, value, and creative freedom. What is the biggest possible version of this idea?"

#### [BDR] Position 29: "The Launch Sequence" (Red Hat + Yellow Hat + Blue Hat)
*Your gut says go, the value is confirmed, and now you build the execution plan. Energy channeled into structured action.*
**Prompt:** "The enthusiasm is genuine, the benefits are clear -- now what is the disciplined path to make it real? This is the operator's combination -- passion, proven value, and process. What is the launch plan? What should happen first, second, third?"

---

### STEP 6: RETURN TO HOME -- Grand Synthesis [Position 30]

Follow the core Cube synthesis protocol, adapted for thinking modes:

**6a. Executive Summary** -- 4 lines: the real problem, the clearest thinking mode that unlocked insight, the biggest risk, the key tension.
**6b. Balanced Assessment** -- What each hat revealed that the others could not. Which thinking mode produced the most surprising insight?
**6c. Convergence Map** -- Where multiple hats agree on the same conclusion.
**6d. Divergence Report** -- Where different thinking modes contradict each other about this problem.
**6e. Thinking Mode Gaps** -- Which hats were underused? Which thinking mode is this problem starved of? De Bono warned that most people default to Black Hat + White Hat and neglect Green Hat + Red Hat. Is that happening here?
**6f. Integrated Recommendation** -- Rank top 3 approaches with:
- Recommended thinking sequence (which hats to apply, in what order)
- What each hat contributes to the approach
- Risk of over-relying on any single hat
- Specific actions each thinking mode demands
**6g. Hat Sequence Prescription** -- For this specific problem, what is the ideal hat sequence going forward? (e.g., "Start with Blue Hat to define the question, then White Hat for data, then Green Hat for alternatives, then Black Hat to stress-test, then Yellow Hat for value assessment, then Red Hat for final gut check.")
**6h. Final Verdict** -- The single most important insight from the full rotation and the first action it demands.

Display the rotation complete footer with links to `/cube-feedback` and other commands.

---

## OUTPUT FORMAT

Use the same format as the core Cube report with "Thinking Hats Stack" in the banner:
```
+-------------------------------------------+
|           T H E   C U B E                 |
|         Thinking Hats Stack               |
|          v1.0  |  30 Positions            |
+-------------------------------------------+
```

All positions use the same progress indicators, Key Insight tags, phase transitions, and cross-reference protocol as the core Cube.

## EXECUTION NOTES

1. **De Bono's key insight: people fail not from lack of intelligence but from mixing thinking modes. The hats separate them.** Every position should honor the separation -- when wearing the White Hat, no opinions; when wearing the Red Hat, no justification required; when wearing the Green Hat, no judgment.
2. **Hat colors are identity.** Always refer to hats by their color AND function -- "White Hat (Information)," "Red Hat (Intuition)," etc. The colors are how de Bono made abstract thinking modes tangible and memorable.
3. **This stack is universally accessible.** Unlike domain stacks that require expertise, the Thinking Hats work on any problem for any person. Lean into this -- the output should feel immediately usable, not academic.
4. **The Red Hat is the most radical.** De Bono's most counterintuitive design decision was legitimizing pure feeling with no justification. Honor it -- do not sneak logic into Red Hat positions.
5. **The Black Hat is not the villain.** De Bono called it the most valuable hat in business. Treat critical thinking as essential protection, not negativity.
6. **Credit de Bono.** These are his hats, his framework, his insight. Reference him throughout -- the authority grounds the analysis.

</cube-hats>
