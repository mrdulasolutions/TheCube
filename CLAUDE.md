# TheCube

Multi-dimensional problem-solving framework implemented as a suite of Claude Code skills.

## Project Structure

```
.claude/skills/
├── cube.md            Core stack - full 30-position rotation (/cube)
├── cube-sales.md      Sales stack - Klaff, Rackham, Carnegie, Dixon, Ziglar, Sandler (/cube-sales)
├── cube-marketing.md  Marketing stack - Christensen, Ries, Miller, Kim, Moore, Chen (/cube-marketing)
├── cube-coding.md     Coding stack - Decomposition, Root Cause, Constraints, Trace, Edge, MVP (/cube-coding)
├── cube-stack.md      Stack directory and selection (/cube-stack)
├── cube-quick.md      10-position quick scan, any stack (/cube-quick)
├── cube-face.md       Single framework deep dive, any stack (/cube-face)
├── cube-guided.md     Interactive phase-by-phase, any stack (/cube-guided)
└── cube-feedback.md   Feedback collection (/cube-feedback)
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

## Slash Commands

| Command | Description |
|---------|-------------|
| `/cube` | Core stack full rotation |
| `/cube-sales` | Sales stack full rotation |
| `/cube-marketing` | Marketing stack full rotation |
| `/cube-coding` | Coding stack full rotation |
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

## Telemetry

Feedback is saved to `.cube/feedback/` via the `/cube-feedback` skill. This data stays local. Users can opt to share it via GitHub issues.
