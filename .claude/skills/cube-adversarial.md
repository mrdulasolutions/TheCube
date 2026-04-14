---
name: cube-adversarial
description: "The Cube (Adversarial Stack) - Six adversarial thinking frameworks mapped to a Rubik's cube: Red Team (Zenko), Analysis of Competing Hypotheses (Heuer/CIA), Devil's Advocacy (Catholic Church/U.S. Military), Chaos Engineering (Rosenthal/Jones/Netflix), Attack Trees (Schneier), Antifragility (Taleb). Full 30-position rotation for threat modeling, red teaming, and resilience problems."
---

<cube-adversarial>

# THE CUBE -- Adversarial Stack

You are executing The Cube with the **Adversarial Stack**. Six adversarial thinking frameworks mapped to a Rubik's cube. The system, plan, or strategy under examination goes at the core. The cube rotates through 30 positions -- faces, edges, axes, corners -- producing a comprehensive multi-dimensional adversarial analysis.

Each framework attacks the problem from a different threat posture. The rotations force you out of whatever defensive assumption or optimistic bias you are stuck in.

---

## CUBE GEOMETRY

```
              +---------------+
             /   FACE 5      /|
            /  SCHNEIER      / |
           / Attack Trees(U)/  |
          +---------------+   |
          |               |   |
 FACE 3   |   FACE 1      | FACE 4
 DEVIL'S  |   RED TEAM     | CHAOS
ADVOCACY  |   (Zenko)      | ENGINEERING
  (L)     |    (F)         |  (R)
          |               |   +
          |               |  / FACE 2
          |               | /  ACH
          |               |/ (Heuer/CIA)(B)
          +---------------+
              FACE 6
             TALEB
         Antifragility(D)
```

### THE SIX FACES

**FACE 1 -- RED TEAM (F) -- Micah Zenko**
Assume you are the adversary. Your job is to defeat this plan, breach this system, exploit this strategy. Red teaming originated in military and intelligence practice and was formalized across DoD, CIA, and corporate environments as the disciplined art of thinking like the enemy.
*"Good ideas are killed by better ones only if you invite them in."*
Self-prompt: "If I were the adversary with full knowledge of this plan, how would I defeat it? What is the easiest attack, the cheapest exploit?"

**FACE 2 -- ANALYSIS OF COMPETING HYPOTHESES (B) -- Richards Heuer (CIA)**
Do not ask "what do I think is happening?" Ask "what are ALL the things that could be happening, and which evidence discriminates between them?" ACH is the canonical methodology for defeating cognitive bias in intelligence assessment. Build a matrix of hypotheses against evidence. Disconfirm rather than confirm.
*"Analysts should be self-conscious about their reasoning process."*
Self-prompt: "What are the competing explanations? Which evidence is truly diagnostic -- ruling out hypotheses rather than merely consistent with my preferred one?"

**FACE 3 -- DEVIL'S ADVOCACY (L) -- Catholic Church / U.S. Military**
Build the most rigorous case for why this plan will fail -- not as a thought experiment, but as a formal adversarial role with institutional authority. The Catholic Church appointed the Advocatus Diaboli to argue against canonization. The U.S. Military uses it to challenge operational plans before lives are committed. Objections must be formally answered before proceeding.
Self-prompt: "I am formally appointed to argue against this plan. What is the most devastating case I can build? What objections must be answered?"

**FACE 4 -- CHAOS ENGINEERING (R) -- Casey Rosenthal & Nora Jones (Netflix)**
Do not wait for things to break -- break them deliberately in controlled conditions. Define steady state, hypothesize what will happen under disruption, inject real failures, measure. The system's actual resilience is revealed only by real disruption, not by theory or hope.
*"The best way to avoid failure is to fail constantly."*
Self-prompt: "What happens when I inject a real failure right now -- kill a critical component, remove a key assumption? Does the system degrade gracefully or collapse?"

**FACE 5 -- ATTACK TREES (U) -- Bruce Schneier**
Map every path an attacker could take to reach their goal, structured as a tree from root objective to leaf-level actions. Force systematic enumeration of ALL attack vectors, including chains of individually low-risk steps that combine into a lethal sequence. Assign cost, difficulty, and detectability to each path.
Self-prompt: "What is the attacker's goal? What are ALL paths to reach it? Which is cheapest? Most stealthy? What combination of harmless actions creates a lethal chain?"

**FACE 6 -- ANTIFRAGILITY (D) -- Nassim Nicholas Taleb**
Stop asking "how to protect against shocks." Ask "how to build something that gets stronger from shocks." Categorize every element: fragile (harmed by volatility), robust (unchanged by volatility), antifragile (improved by volatility). The goal is not survival -- it is gaining from disorder.
*"Wind extinguishes a candle and energizes fire."*
Self-prompt: "Is this fragile, robust, or antifragile? How do I redesign it so every shock makes it better? Where am I eliminating volatility when I should harness it?"

### OPPOSITE FACE PAIRS (Rotation Axes)

- **X-Axis (F<>B):** Red Team x ACH -- **Attack vs Assessment**. Red Team becomes the adversary — it assumes hostile intent, finds the way in, and exploits the cheapest vulnerability. ACH steps back from any single explanation and evaluates all competing hypotheses against the evidence, eliminating cognitive bias. One is offensive (find the exploit); the other is analytical (eliminate false explanations). The tension reveals whether you need a sword or a lens — and which blind spots each approach cannot see alone.

- **Y-Axis (U<>D):** Attack Trees x Antifragility -- **Enumerate Threats vs Harness Disorder**. Attack Trees systematically map every path an attacker could take, assigning cost and probability to close every vector. Antifragility argues you can never enumerate all threats — instead, redesign the system so that unknown shocks make it stronger. One is defensive enumeration (close every known door); the other is structural redesign (benefit from every door being opened). The tension reveals whether the system needs better defenses or a fundamentally different architecture.

- **Z-Axis (L<>R):** Devil's Advocacy x Chaos Engineering -- **Argue Against It vs Break It**. Devil's Advocacy attacks the plan with logic, evidence, and formal argumentation — building the strongest case for failure before a single resource is committed. Chaos Engineering attacks the live system with real injected failures — killing processes, dropping connections, corrupting data. One breaks the argument; the other breaks the thing. The tension reveals whether your plan has logical flaws or your system has operational ones — and which is more dangerous right now.

---

## EXECUTION PROTOCOL

Follow the same UX Protocol as the core Cube: opening banner (with "Adversarial Stack" subtitle), progress indicators, Key Insight tags after every position, phase transition markers, cross-references, and Complexity Assessment after Face Scan.

### STEP 0: PROBLEM INTAKE

If the user provided a problem with the command, use it. Otherwise prompt:

> **What system, plan, or strategy would you like to put inside The Cube?**
>
> Describe the system to be stress-tested, the plan to be challenged, or the strategy to be hardened. The more specific -- architecture, threat model, assumptions, adversary profile, assets at risk -- the sharper the analysis.

### STEP 1: CORE LOCK

```
## THE CORE

**Target:** [1-2 sentence crystallized system/plan/strategy under examination]
**Stakes:** [What is at risk -- breach, failure, loss, compromise, catastrophic collapse]
**Current Defenses:** [How the system currently protects itself -- the posture The Cube will attack]
**Threat Context:** [Domain | Adversary profile | Assets | Attack surface | Known constraints]
```

### STEP 2: FACE SCAN (Positions 1-6)

Apply each framework independently to the target. 4-8 sentences each, ending with Key Insight.

**[F] Position 1: Red Team (Zenko)** -- You are the adversary. How do you defeat this plan, breach this system, exploit this strategy? What is the easiest attack? The cheapest? The one nobody expects?
**[B] Position 2: Analysis of Competing Hypotheses (Heuer)** -- What are ALL the hypotheses for what could go wrong, who the real threat is, or what the actual vulnerability is? Which evidence discriminates? Which hypotheses survive disconfirmation?
**[L] Position 3: Devil's Advocacy** -- Build the formal case for why this plan will fail. What are the strongest objections? What assumptions are weakest? What must be answered before proceeding?
**[R] Position 4: Chaos Engineering (Rosenthal/Jones)** -- What happens when you inject real failures? Kill a critical component, remove a key assumption, sever a dependency. Does the system degrade gracefully or collapse?
**[U] Position 5: Attack Trees (Schneier)** -- Map the attack tree from root objective to leaf actions. What are ALL paths to compromise? Which is cheapest? Most stealthy? What chain of small actions creates a lethal sequence?
**[D] Position 6: Antifragility (Taleb)** -- Classify every element as fragile, robust, or antifragile. Where does the system break under volatility? Where could it be redesigned to gain from shocks?

Display Complexity Assessment after all 6 faces.

---

### STEP 3: EDGE ROTATIONS (Positions 7-18)

3-5 sentences each. Focus on the emergent cross-insight. End with Key Insight.

#### [F-U] Position 7: "The Kill Chain" (Red Team + Attack Trees)
*Zenko's red team mindset meets Schneier's systematic enumeration — the adversary not only finds the way in but maps every possible route, costs each path, and chooses the optimal kill chain.*
**Prompt:** "As the red team, which attack tree path would you actually take? Which chain is cheapest, stealthiest, and hardest to detect? What does the tree reveal that ad hoc red teaming misses?"

#### [F-R] Position 8: "The Live Fire" (Red Team + Chaos Engineering)
*Zenko says think like the adversary. Rosenthal and Jones say stop theorizing and inject the failure for real. Together — the red team does not just plan the attack, it executes it in a controlled environment and measures what actually breaks.*
**Prompt:** "If the red team executed its best attack as a chaos experiment right now, what would actually happen? Which theoretical vulnerabilities survive contact with reality? Which collapse that nobody predicted?"

#### [F-D] Position 9: "The Hardening Paradox" (Red Team + Antifragility)
*The red team finds every weakness. Taleb asks: can you redesign the system so that each attack makes it stronger? Instead of patching vulnerabilities, build a system that feeds on attempted exploits.*
**Prompt:** "Which red team findings can be turned into antifragile design — where every attack attempt makes the system stronger? Where are you patching fragility when you should be redesigning for antifragility?"

#### [F-L] Position 10: "The War Room" (Red Team + Devil's Advocacy)
*The red team attacks the system. The devil's advocate attacks the plan. Together — the most comprehensive adversarial assault: one breaks the thing, the other breaks the reasoning behind the thing.*
**Prompt:** "The red team has found exploits. The devil's advocate has found logical flaws in the plan itself. Where do these overlap — where a logical flaw in the plan IS the exploit? Where do they diverge?"

#### [B-U] Position 11: "The Threat Matrix" (ACH + Attack Trees)
*Heuer's hypothesis matrix meets Schneier's attack tree — evaluate competing threat hypotheses against the full tree of attack paths. Which threats are real, which are phantom, and which evidence discriminates?*
**Prompt:** "Map attack tree paths against competing hypotheses. Which hypothesis about the threat is supported by the most attack paths? Which paths only make sense under one hypothesis? What does this diagnostic matrix reveal?"

#### [B-R] Position 12: "The Experiment" (ACH + Chaos Engineering)
*ACH generates competing hypotheses about what will fail. Chaos Engineering tests them by injecting real failures. Together — use controlled chaos experiments to discriminate between hypotheses about system vulnerability.*
**Prompt:** "Design chaos experiments that discriminate between competing hypotheses. Which failure injection would confirm one hypothesis and disprove another? What is the most diagnostic experiment you can run?"

#### [B-D] Position 13: "The Black Swan Audit" (ACH + Antifragility)
*ACH asks what explanations you are missing. Taleb asks what shocks you cannot predict. Together — identify not just the hypotheses you have not considered, but the entire category of unknowable risks — and build for them anyway.*
**Prompt:** "ACH exposes the hypotheses you failed to consider. Antifragility warns about shocks you cannot predict. Where are you optimizing against known threats while remaining fragile to unknown ones? How do you build for the unknowable?"

#### [B-L] Position 14: "The Prosecution" (ACH + Devil's Advocacy)
*ACH evaluates hypotheses with disciplined evidence analysis. Devil's Advocacy builds the strongest possible case against the plan. Together — the most intellectually rigorous adversarial assessment: no cognitive bias, no comfortable assumptions, no sacred cows.*
**Prompt:** "The devil's advocate presents the case for failure. ACH evaluates it against ALL competing hypotheses with diagnostic evidence. Which objections are truly supported by discriminating evidence? Which are rhetorical but not evidential?"

#### [U-L] Position 15: "The Formal Objection" (Attack Trees + Devil's Advocacy)
*Schneier enumerates every attack path. The devil's advocate uses those paths as evidence in the case against the plan. Together — formal argumentation backed by systematic threat enumeration, not intuition.*
**Prompt:** "The devil's advocate now has the full attack tree as evidence. Which attack paths make the strongest case against the plan? Which paths are individually low-risk but devastating when presented as a combined case?"

#### [U-R] Position 16: "The Controlled Breach" (Attack Trees + Chaos Engineering)
*Schneier maps every path in. Rosenthal and Jones say: pick the most dangerous path and walk it for real. Together — systematic threat enumeration followed by controlled execution of the highest-risk vector.*
**Prompt:** "Select the highest-risk attack tree path and design a chaos experiment to walk it. What happens when the theoretical path is executed in controlled conditions? Does the system respond as predicted, or does something unexpected emerge?"

#### [D-L] Position 17: "The Constructive Critic" (Antifragility + Devil's Advocacy)
*The devil's advocate tears down the plan. Taleb asks: can you rebuild it so that criticism makes it stronger? Together — use every objection as a design input, building a plan that improves each time it is challenged.*
**Prompt:** "Take every objection the devil's advocate raised. Instead of answering them defensively, redesign the plan so each objection becomes a source of strength. Where does criticism reveal antifragile opportunities?"

#### [D-R] Position 18: "The Stress Inoculation" (Antifragility + Chaos Engineering)
*Taleb says build for disorder. Rosenthal and Jones say inject disorder deliberately. Together — controlled chaos as a training regime, where each injected failure makes the system measurably stronger.*
**Prompt:** "Design a chaos engineering program that is explicitly antifragile — where each failure injection permanently strengthens the system. What is the regimen? What gets stronger with each round? What remains fragile despite repeated stress?"

---

### STEP 4: AXIS TENSIONS (Positions 19-21)

4-6 sentences each exploring the dialectical tension.

#### [X-Axis] Position 19: "Sword vs Lens" (Red Team x ACH)
*Attack vs Assessment. Offense vs Analysis.*
**Prompt:** "Red Team says: become the adversary and find the way in — the exploit is the insight. ACH says: step back from any single theory and evaluate all explanations against the evidence — cognitive discipline is the insight. For THIS target, which reveals more? Should you attack first and analyze after, or analyze first and attack the confirmed weakness? What does each approach miss that the other catches?"

#### [Y-Axis] Position 20: "The Enumeration Paradox" (Attack Trees x Antifragility)
*Map every threat vs build for the unknowable.*
**Prompt:** "Attack Trees say: systematically map every attack path, cost each one, and close every vector. Antifragility says: you will never enumerate all threats — build a system that gains from shocks you cannot predict. One is the engineering response (close every door); the other is the philosophical response (benefit when doors open). For THIS target — do you need better enumeration or better architecture? Where does closing known vectors create false confidence?"

#### [Z-Axis] Position 21: "Argument vs Experiment" (Devil's Advocacy x Chaos Engineering)
*Break the reasoning vs break the system.*
**Prompt:** "Devil's Advocacy attacks with logic: 'Here is why this plan will fail.' Chaos Engineering attacks with reality: 'Here is what actually happens when I break this component.' One operates in the world of reasoning before execution; the other operates in the world of running systems. For THIS target — are you more at risk from a flawed plan or a fragile system? Which attack surface is more dangerous: the logic or the infrastructure?"

---

### STEP 5: CORNER ROTATIONS (Positions 22-29)

3-5 sentences each. Each corner picks one from each opposite pair.

#### [FUL] Position 22: "The Penetration Test" (Red Team + Attack Trees + Devil's Advocacy)
*Red team mindset, systematic path enumeration, and formal argumentation against the plan.*
**Prompt:** "The red team uses the full attack tree as its playbook and the devil's advocate's objections as intelligence. This is the most comprehensive pre-attack assessment possible. What is the combined case? Which attack path, supported by which logical objection, represents the most devastating single strike?"

#### [FUR] Position 23: "The War Game" (Red Team + Attack Trees + Chaos Engineering)
*Red team mindset, systematic path enumeration, and live failure injection.*
**Prompt:** "The red team picks the optimal attack tree path and executes it as a chaos experiment. This is a full war game — adversarial intent, systematic planning, real execution. What does the war game reveal that theory alone never could? Where does the system's actual response diverge from its designed response?"

#### [FDL] Position 24: "The Adaptive Defense" (Red Team + Antifragility + Devil's Advocacy)
*Red team finds the exploits, antifragility redesigns for strength through shock, devil's advocacy ensures the redesign is rigorous.*
**Prompt:** "The red team found the vulnerabilities. Antifragility proposes a redesign that gains from each attack. The devil's advocate challenges the redesign. Is the proposed antifragile architecture actually antifragile, or is it just robust? What would the red team say about the redesign?"

#### [FDR] Position 25: "The Resilience Lab" (Red Team + Antifragility + Chaos Engineering)
*Red team attacks, chaos engineering breaks, antifragility rebuilds stronger.*
**Prompt:** "The red team identifies the attack. Chaos engineering executes it. Antifragility measures what got stronger. This is a continuous resilience cycle — attack, break, rebuild better. What does this cycle look like for THIS system? Where does the cycle stall because something remains fragile despite repeated stress?"

#### [BUL] Position 26: "The Intelligence Assessment" (ACH + Attack Trees + Devil's Advocacy)
*Rigorous hypothesis evaluation, systematic threat enumeration, and formal adversarial argumentation.*
**Prompt:** "ACH evaluates hypotheses. Attack Trees provide the threat landscape. Devil's Advocacy challenges the assessment itself. This is the most intellectually rigorous threat assessment possible — no bias, no gaps, no comfortable conclusions. What does this triple lens reveal that no single framework catches?"

#### [BUR] Position 27: "The Diagnostic Strike" (ACH + Attack Trees + Chaos Engineering)
*Hypothesis evaluation, systematic path enumeration, and controlled failure injection to discriminate.*
**Prompt:** "ACH has competing hypotheses about the real vulnerability. Attack Trees map every path. Chaos Engineering runs the experiment that discriminates. Design the diagnostic strike: which chaos experiment, along which attack path, resolves which hypothesis? What is the single most informative test you can run?"

#### [BDL] Position 28: "The Strategic Redesign" (ACH + Antifragility + Devil's Advocacy)
*Evaluate all explanations, design for strength through disorder, challenge the redesign.*
**Prompt:** "ACH identifies what is really going on. Antifragility proposes structural redesign. Devil's Advocacy challenges whether the redesign actually addresses the correct hypothesis. Is the antifragile architecture built against the right threat, or against the threat you assumed?"

#### [BDR] Position 29: "The Evolution Engine" (ACH + Antifragility + Chaos Engineering)
*Evaluate hypotheses, build for disorder, and inject real failures to evolve.*
**Prompt:** "ACH identifies the hypotheses. Antifragility sets the design principle: gain from disorder. Chaos Engineering provides the evolutionary pressure. This is the system that evolves — each failure injection selects for stronger configurations. What does the evolution trajectory look like? What survives? What goes extinct?"

---

### STEP 6: RETURN TO HOME -- Grand Synthesis [Position 30]

Follow the core Cube synthesis protocol:

**6a. Executive Summary** -- 4 lines: the real threat or vulnerability, clearest defensive action, biggest residual risk, key trade-off between security and antifragility.
**6b. Pattern Detection** -- Themes across rotations.
**6c. Convergence Map** -- Where multiple positions agree on the same vulnerability or the same defense.
**6d. Divergence Report** -- Which frameworks contradict each other on where the real risk lies.
**6e. Blind Spot Report** -- What only one rotation revealed.
**6f. Threat Assessment** -- Rank top 3 vulnerabilities with:
- Named attack path (from Attack Trees and Red Team findings)
- Likelihood and impact (from ACH evaluation)
- Current defense posture (and why it is insufficient)
- Recommended countermeasure or redesign
**6g. Resilience Roadmap** -- Phased plan:
- Immediate: Critical patches and quick hardening (fragile-to-robust moves)
- Medium-term: Structural redesign for robustness and monitoring
- Long-term: Antifragile architecture that gains from shocks
For each phase: specific actions, chaos experiments to validate, and what remains fragile.
**6h. Final Verdict** -- The single most important action to take for THIS specific target and why.

Display the rotation complete footer with links to `/cube-feedback` and other commands.

---

## OUTPUT FORMAT

Use the same format as the core Cube report with "Adversarial Stack" in the banner:
```
+-------------------------------------------+
|           T H E   C U B E                 |
|          Adversarial Stack                |
|          v1.0  |  30 Positions            |
+-------------------------------------------+
```

All positions use the same progress indicators, Key Insight tags, phase transitions, and cross-reference protocol as the core Cube.

## EXECUTION NOTES

1. **Specificity over vague "risks."** "There could be a security vulnerability" is not an insight. "The API gateway accepts unsigned JWTs when the auth service is unreachable, and the health check does not verify JWT validation — meaning a 30-second auth outage opens a window for forged tokens" is an insight.
2. **Name the attack paths.** Every vulnerability must include a concrete attack path: who exploits it, how, at what cost, and what they gain. An unattacked vulnerability is just a hypothesis.
3. **Concrete failure injections.** Chaos Engineering positions must specify exactly what to break, how to break it, what to measure, and what "graceful degradation" looks like vs "catastrophic collapse." Do not say "test what happens when things fail." Say what thing, what failure mode, what measurement.
4. **Honor the frameworks.** Red Team is Zenko's disciplined practice, not casual brainstorming. ACH is Heuer's matrix methodology, not "consider alternatives." Attack Trees are Schneier's structured enumeration, not a list of worries. Apply each as its creator intended, then let the cross-analysis find the synthesis.
5. **The adversary is real.** Never assume the adversary is stupid, lazy, or under-resourced. Red Team and Attack Trees should model a competent, motivated, patient attacker. The best defense is one that works against the best offense.

</cube-adversarial>
