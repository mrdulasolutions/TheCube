---
name: cube-stack
description: "List all available Cube stacks and their frameworks. Use to discover which cube is right for your problem: Core, Sales, Marketing, or Coding."
---

<cube-stack>

# THE CUBE -- Stack Directory

Display the following stack directory to help the user choose the right cube for their problem.

---

```
+-------------------------------------------+
|           T H E   C U B E                 |
|          Stack Directory                  |
|          4 Stacks  |  24 Frameworks       |
+-------------------------------------------+
```

## Available Stacks

### CORE -- Problem Solving Fundamentals
**Command:** `/cube [problem]`
**Best for:** General problem solving, strategic decisions, complex challenges

| Face | Framework | Core Question |
|------|-----------|---------------|
| F | Inversion | How would I guarantee this gets worse? |
| B | First Principles | What is actually true when I strip all assumptions? |
| L | Steelmanning | What is the strongest case for NOT solving this? |
| R | Second-Order Thinking | What new problems does my solution create? |
| U | Pre-Mortem | It already failed. What killed it? |
| D | Boundary Conditions | What happens at zero? At infinity? At 1000x? |

**Axes:** Destruction vs Construction | Temporal vs Structural Failure | Resistance vs Consequences

---

### SALES -- Sales Methodology
**Command:** `/cube-sales [problem]`
**Best for:** Deal strategy, objection handling, pipeline issues, pitch refinement, closing

| Face | Framework | Core Question |
|------|-----------|---------------|
| F | Frame Control (Klaff) | Who controls the frame in this conversation? |
| B | SPIN Selling (Rackham) | What questions should I be asking? |
| L | Rapport & Influence (Carnegie) | Does the buyer feel heard, valued, and important? |
| R | Challenger Sale (Dixon/Adamson) | What can I teach that reframes how they see their problem? |
| U | Need Satisfaction (Ziglar) | What does this person actually want? |
| D | Pain Qualification (Sandler) | What is their real pain? Is this prospect even qualified? |

**Axes:** Control vs Discovery | Desire vs Pain | Warmth vs Hard Truth

---

### MARKETING -- Marketing Strategy
**Command:** `/cube-marketing [problem]`
**Best for:** Positioning, go-to-market, growth, messaging, category creation

| Face | Framework | Core Question |
|------|-----------|---------------|
| F | Jobs to Be Done (Christensen) | What job is the customer hiring this to do? |
| B | Positioning (Ries & Trout) | What word do we own in the customer's mind? |
| L | StoryBrand (Miller) | Is the customer the hero? Is our message clear? |
| R | Blue Ocean (Kim & Mauborgne) | Where is uncontested market space? |
| U | Crossing the Chasm (Moore) | Where are we in the adoption lifecycle? |
| D | Growth Loops (Chen/Reforge) | What is our growth loop? Where does it leak? |

**Axes:** Truth vs Perception | Adoption Barriers vs Growth Mechanics | Clarify Story vs Rewrite Game

---

### CODING -- Engineering Problem Solving
**Command:** `/cube-coding [problem]`
**Best for:** Debugging, architecture decisions, performance issues, technical debt, system design

| Face | Framework | Core Question |
|------|-----------|---------------|
| F | Decomposition | What are the atomic, independently testable pieces? |
| B | Root Cause Analysis | Why does this happen? And why does THAT happen? |
| L | Constraint Mapping | Which constraints are proven? Which are assumed? |
| R | Trace the Execution | What ACTUALLY happens when this code runs? |
| U | Edge Case Analysis | What happens at null? Empty? Max? Concurrent? |
| D | Minimum Viable Proof | What is the smallest experiment that proves my theory? |

**Axes:** Breadth vs Depth | What Breaks vs What Works | Theoretical Limits vs Actual Behavior

---

## Quick Reference

| Problem Type | Recommended Stack | Command |
|-------------|-------------------|---------|
| General problem solving | Core | `/cube` |
| Strategic decisions | Core | `/cube` |
| Deal strategy or objections | Sales | `/cube-sales` |
| Pipeline or closing | Sales | `/cube-sales` |
| Positioning or messaging | Marketing | `/cube-marketing` |
| Growth or go-to-market | Marketing | `/cube-marketing` |
| Bugs or debugging | Coding | `/cube-coding` |
| Architecture decisions | Coding | `/cube-coding` |
| Performance optimization | Coding | `/cube-coding` |

## All Commands

| Command | Description |
|---------|-------------|
| `/cube [problem]` | Core stack -- full 30-position rotation |
| `/cube-sales [problem]` | Sales stack -- full 30-position rotation |
| `/cube-marketing [problem]` | Marketing stack -- full 30-position rotation |
| `/cube-coding [problem]` | Coding stack -- full 30-position rotation |
| `/cube-quick [problem]` | Any stack -- fast 10-position scan |
| `/cube-face [framework] [problem]` | Any stack -- single framework deep dive |
| `/cube-guided [problem]` | Any stack -- interactive phase-by-phase |
| `/cube-stack` | This directory |
| `/cube-feedback` | Rate an analysis |

---

After displaying this directory, ask:

> **Which stack fits your problem? Type the command to get started.**

</cube-stack>
