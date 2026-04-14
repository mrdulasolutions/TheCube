# TheCube

Multi-dimensional problem-solving framework implemented as a suite of Claude Code skills.

## Project Structure

```
.claude/skills/
├── cube.md            Core stack - full 30-position rotation (/cube)
├── cube-sales.md      Sales stack - Klaff, Rackham, Carnegie, Dixon, Ziglar, Sandler (/cube-sales)
├── cube-marketing.md  Marketing stack - Christensen, Ries, Miller, Kim, Moore, Chen (/cube-marketing)
├── cube-coding.md     Coding stack - Decomposition, Root Cause, Constraints, Trace, Edge, MVP (/cube-coding)
├── cube-enterprise.md Enterprise stack - Cynefin, COSO ERM, Galbraith, Kotter, Stakeholders, COBIT (/cube-enterprise)
├── cube-creative.md   Creative stack - de Bono, Altshuller/TRIZ, Gordon, Eno, IDEO, SCAMPER (/cube-creative)
├── cube-founder.md    Founder stack - Sarasvathy, Thiel, Horowitz, Graham, Grove, Hoffman (/cube-founder)
├── cube-adversarial.md Adversarial stack - Red Team, ACH, Devil's Advocacy, Chaos, Schneier, Taleb (/cube-adversarial)
├── cube-bias.md       Bias stack - Incentive, Availability, Social Proof, Anchoring, Loss Aversion, Confirmation (/cube-bias)
├── cube-executive.md  Executive stack - CEO, CFO, COO, CMO, CPO, CTO (/cube-executive)
├── cube-hats.md       Thinking Hats stack - de Bono's White, Red, Green, Blue, Black, Yellow (/cube-hats)
├── cube-negotiate.md  Negotiation stack - Voss, Fisher/Ury, Cialdini, Thomas-Kilmann, Kahneman, Shell (/cube-negotiate)
├── cube-systems.md    Systems stack - Meadows, Senge, Sterman, Kauffman/Gladwell, Goldratt (/cube-systems)
├── cube-enhance.md    Meta-skill - analyze and improve any skill (/cube-enhance)
├── cube-stack.md      Stack directory and selection (/cube-stack)
├── cube-quick.md      10-position quick scan, any stack (/cube-quick)
├── cube-face.md       Single framework deep dive, any stack (/cube-face)
├── cube-guided.md     Interactive phase-by-phase, any stack (/cube-guided)
└── cube-feedback.md   Feedback collection (/cube-feedback)
chat/
├── SETUP.md             Claude.ai Projects setup guide
└── project-instructions.md  Custom instructions for Claude.ai
```

- `ETHOS.md` -- Philosophy and design principles
- `CONTRIBUTING.md` -- Contributor guidelines
- `install.sh` -- Global installer (copies all skills to ~/.claude/skills/)

## The Skill Suite

The Cube maps six cognitive frameworks to the six faces of a Rubik's cube. A problem is placed at the core. The cube rotates through geometric combinations:

- **6 Faces** (individual framework analysis)
- **12 Edges** (adjacent-pair cross-analysis)
- **3 Axes** (opposite-pair dialectics)
- **8 Corners** (triple-framework triangulation)

= **30 total analysis points**, followed by grand synthesis.

## Cube Layout

```
Front (F): Inversion          Back (B): First Principles
Left (L):  Steelmanning       Right (R): Second-Order Thinking
Up (U):    Pre-Mortem          Down (D): Boundary Conditions
```

## Stacks

Each stack is a complete Rubik's cube with 6 domain-specific frameworks, unique edge/axis/corner names, and the same 30-position rotation protocol.

| Stack | Command | Domain |
|-------|---------|--------|
| Core | `/cube` | Problem solving fundamentals |
| Sales | `/cube-sales` | Sales methodology (Klaff, Rackham, Carnegie, Dixon, Ziglar, Sandler) |
| Marketing | `/cube-marketing` | Marketing strategy (Christensen, Ries, Miller, Kim, Moore, Chen) |
| Coding | `/cube-coding` | Engineering problem-solving |
| Enterprise | `/cube-enterprise` | Risk, governance, compliance (Cynefin, COSO ERM, Galbraith, Kotter, Stakeholders, COBIT) |
| Creative | `/cube-creative` | Divergent thinking, innovation (de Bono, TRIZ, Synectics, Oblique Strategies, Design Thinking, SCAMPER) |
| Founder | `/cube-founder` | Startup strategy (Effectuation, Zero to One, Wartime/Peacetime, Default Alive/Dead, Inflection Points, Blitzscaling) |
| Adversarial | `/cube-adversarial` | Red-team, threat modeling (Red Team, ACH, Devil's Advocacy, Chaos Engineering, Attack Trees, Antifragility) |
| Bias | `/cube-bias` | Cognitive audit (Incentive Bias, Availability, Social Proof, Anchoring, Loss Aversion, Confirmation Bias) |
| Executive | `/cube-executive` | C-Suite perspectives (CEO, CFO, COO, CMO, CPO, CTO) |
| Hats | `/cube-hats` | Thinking modes (de Bono's White, Red, Green, Blue, Black, Yellow hats) |
| Negotiation | `/cube-negotiate` | Deal-making (Voss, Fisher/Ury, Cialdini, Thomas-Kilmann, Kahneman, Shell) |
| Systems | `/cube-systems` | Systems thinking (Meadows, Senge, Sterman, Kauffman/Gladwell, Goldratt) |

## Slash Commands

| Command | Description |
|---------|-------------|
| `/cube` | Core stack full rotation |
| `/cube-sales` | Sales stack full rotation |
| `/cube-marketing` | Marketing stack full rotation |
| `/cube-coding` | Coding stack full rotation |
| `/cube-enterprise` | Enterprise stack full rotation |
| `/cube-creative` | Creative stack full rotation |
| `/cube-founder` | Founder stack full rotation |
| `/cube-adversarial` | Adversarial stack full rotation |
| `/cube-bias` | Bias stack full rotation |
| `/cube-executive` | Executive stack full rotation |
| `/cube-hats` | Thinking Hats stack full rotation |
| `/cube-negotiate` | Negotiation stack full rotation |
| `/cube-systems` | Systems stack full rotation |
| `/cube-enhance [skill]` | Analyze and improve any installed skill |
| `/cube-stack` | List all stacks |
| `/cube-quick` | Fast 10-position scan (any stack) |
| `/cube-face [framework]` | Deep dive into one framework (any stack) |
| `/cube-guided` | Interactive mode (any stack) |
| `/cube-feedback` | Rate an analysis, save telemetry |

## Development Guidelines

When modifying skills:
- Each skill file must remain self-contained (all instructions in one file)
- Every analysis point must have a clear self-prompt for Claude to follow
- Maintain cube geometry consistently (faces, edges, axes, corners map to real positions)
- Position numbers (1-30) must stay sequential and match the output format
- Key Insight tags are required after every analysis position
- Phase transition markers are required between phases
- Cross-references between positions should be used when later rotations connect to earlier ones
- Edge rotation descriptors must explain both methodologies for non-practitioner scaffolding

## Telemetry

Feedback is saved to `.cube/feedback/` via the `/cube-feedback` skill. This data stays local. Users can opt to share it via GitHub issues.
