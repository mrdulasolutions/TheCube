# Setting Up The Cube in Claude.ai

## For Cowork Users

Run the installer from your Terminal, then start a new Cowork session:

```bash
git clone https://github.com/mrdulasolutions/TheCube.git
cd TheCube
./install.sh
```

All slash commands (`/cube`, `/cube-sales`, `/cube-quick`, etc.) will be available immediately. **You're done** — the rest of this guide is for Claude.ai Chat (Projects).

---

## For Claude.ai Chat (Projects)

The Cube works in Claude.ai Chat through **Projects**. Here's how to set it up in under 2 minutes.

## Step 1: Create a Project

1. Go to [claude.ai](https://claude.ai)
2. In the left sidebar, click **Projects**
3. Click **Create Project**
4. Name it **"The Cube"** (or whatever you like)

## Step 2: Upload the Knowledge Files

In your new project, click **Add knowledge** and upload the skill files from this repo's `.claude/skills/` directory:

**Required (pick what you need):**

| File | What It Does |
|------|-------------|
| `cube.md` | Core stack — full 30-position rotation |
| `cube-quick.md` | Quick 10-position scan (any stack) |
| `cube-face.md` | Single framework deep dive (any stack) |

**Optional stacks (add if you want domain-specific cubes):**

| File | What It Does |
|------|-------------|
| `cube-sales.md` | Sales stack (Klaff, Rackham, Carnegie, Dixon, Ziglar, Sandler) |
| `cube-marketing.md` | Marketing stack (Christensen, Ries, Miller, Kim, Moore, Chen) |
| `cube-coding.md` | Coding stack (Decomposition, Root Cause, Constraints, Trace, Edge Cases, MVP) |

**Optional utilities:**

| File | What It Does |
|------|-------------|
| `cube-guided.md` | Interactive mode — pauses between phases |
| `cube-stack.md` | Stack directory — lists all available stacks |
| `cube-feedback.md` | Structured feedback collection |

> **Tip:** Start with just `cube.md` and `cube-quick.md`. Add others as you need them.

## Step 3: Set Custom Instructions

In the project settings, find **Custom instructions** (or **Project instructions**) and paste the contents of [`project-instructions.md`](project-instructions.md) from this directory.

This tells Claude how to recognize your Cube requests and which knowledge file to use.

## Step 4: Use It

Start a new conversation inside your project and say:

```
Cube this: My startup has 6 months of runway and our product isn't getting traction
```

Or for a quick scan:

```
Quick cube: Should we pivot to enterprise or double down on self-serve?
```

Or for a specific stack:

```
Cube sales: This enterprise deal has been stuck at procurement for 3 weeks
```

---

## Tips

- **Start with quick cube.** The 10-position scan covers faces + axes + synthesis and works well within chat context limits. Use the full 30-position rotation for complex, high-stakes problems.

- **Be specific.** "My business isn't growing" will produce generic output. "We have 200 MAU after 18 months, $50K MRR, 6 months runway, and our activation rate dropped from 40% to 25% after the last redesign" will produce insight.

- **Use guided mode for long analyses.** Say "guided cube [problem]" and Claude will pause between phases, letting you drill into what's interesting before moving on.

- **Deep dives are powerful.** If one face from a quick scan produces a breakthrough insight, follow up with "deep dive [framework] on [problem]" to go much deeper on that single angle.

---

## Differences from Claude Code

| Feature | Claude Code | Claude.ai Chat |
|---------|------------|----------------|
| Trigger | `/cube [problem]` | "Cube this: [problem]" |
| Stack switch | `/cube-sales` | "Cube sales: [problem]" |
| Quick scan | `/cube-quick` | "Quick cube: [problem]" |
| Deep dive | `/cube-face inversion` | "Deep dive inversion on [problem]" |
| Guided | `/cube-guided` | "Guided cube: [problem]" |
| Feedback | `/cube-feedback` | "Cube feedback" |
| Telemetry | Saves to `.cube/feedback/` | Copy/paste to save manually |

The analysis output is identical. Only the trigger method differs.
