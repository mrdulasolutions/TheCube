#!/bin/bash
# The Cube -- Installer
# Installs all skills to ~/.claude/skills/ for global availability
# Works with Claude Code, Claude Cowork, and Claude Desktop

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_DIR="$SCRIPT_DIR/.claude/skills"
DEST_DIR="$HOME/.claude/skills"

if [ ! -d "$SKILL_DIR" ]; then
    echo "Error: Skills directory not found at $SKILL_DIR"
    echo "Make sure you're running this from the TheCube repository root."
    exit 1
fi

SKILLS=(
    "cube"
    "cube-sales"
    "cube-marketing"
    "cube-coding"
    "cube-enterprise"
    "cube-creative"
    "cube-founder"
    "cube-adversarial"
    "cube-bias"
    "cube-executive"
    "cube-hats"
    "cube-negotiate"
    "cube-systems"
    "cube-enhance"
    "cube-stack"
    "cube-quick"
    "cube-face"
    "cube-guided"
    "cube-feedback"
)

mkdir -p "$DEST_DIR"

INSTALLED=0
for skill in "${SKILLS[@]}"; do
    src="$SKILL_DIR/${skill}.md"
    if [ -f "$src" ]; then
        # Standalone .md format (Claude Code)
        cp "$src" "$DEST_DIR/${skill}.md"

        # Directory/SKILL.md format (Cowork)
        mkdir -p "$DEST_DIR/$skill"
        cp "$src" "$DEST_DIR/$skill/SKILL.md"

        INSTALLED=$((INSTALLED + 1))
    else
        echo "  Warning: ${skill}.md not found, skipping."
    fi
done

echo ""
echo "  The Cube installed successfully. ($INSTALLED skills)"
echo ""
echo "  Location: $DEST_DIR"
echo ""
echo "  Works with: Claude Code | Cowork | Desktop"
echo ""
echo "  Stacks:"
echo "    /cube [problem]             Core -- problem solving fundamentals"
echo "    /cube-sales [problem]       Sales -- Klaff, Rackham, Carnegie, Dixon, Ziglar, Sandler"
echo "    /cube-marketing [problem]   Marketing -- Christensen, Ries, Miller, Kim, Moore, Chen"
echo "    /cube-coding [problem]      Coding -- Decomposition, Root Cause, Constraints, Trace, Edge, MVP"
echo "    /cube-enterprise [problem]  Enterprise -- Cynefin, COSO ERM, Galbraith, Kotter, Stakeholders, COBIT"
echo "    /cube-creative [problem]    Creative -- de Bono, Altshuller/TRIZ, Gordon, Eno, IDEO, SCAMPER"
echo "    /cube-founder [problem]     Founder -- Sarasvathy, Thiel, Horowitz, Graham, Grove, Hoffman"
echo "    /cube-adversarial [problem] Adversarial -- Red Team, ACH, Devil's Advocacy, Chaos, Schneier, Taleb"
echo "    /cube-bias [problem]        Bias -- Incentive, Availability, Social Proof, Anchoring, Loss Aversion, Confirmation"
echo "    /cube-executive [problem]   Executive -- CEO, CFO, COO, CMO, CPO, CTO"
echo "    /cube-hats [problem]        Thinking Hats -- de Bono's White, Red, Green, Blue, Black, Yellow"
echo "    /cube-negotiate [problem]   Negotiation -- Voss, Fisher/Ury, Cialdini, Thomas-Kilmann, Kahneman, Shell"
echo "    /cube-systems [problem]     Systems -- Meadows, Senge, Sterman, Kauffman/Gladwell, Goldratt"
echo ""
echo "  Tools:"
echo "    /cube-quick [problem]       Fast 10-position scan (any stack)"
echo "    /cube-face [fw] [problem]   Single framework deep dive (any stack)"
echo "    /cube-guided [problem]      Interactive phase-by-phase (any stack)"
echo "    /cube-enhance [skill]       Analyze and improve any installed skill"
echo "    /cube-stack                 List all stacks and frameworks"
echo "    /cube-feedback              Rate an analysis"
echo ""
echo "  For Cowork: start a new session after installing."
echo "  For Chat:   see chat/SETUP.md for Claude.ai Projects setup."
echo ""
