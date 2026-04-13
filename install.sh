#!/bin/bash
# The Cube -- Installer
# Copies all skills to ~/.claude/skills/ for global availability

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
    "cube.md"
    "cube-sales.md"
    "cube-marketing.md"
    "cube-coding.md"
    "cube-stack.md"
    "cube-quick.md"
    "cube-face.md"
    "cube-guided.md"
    "cube-feedback.md"
)

mkdir -p "$DEST_DIR"

INSTALLED=0
for skill in "${SKILLS[@]}"; do
    if [ -f "$SKILL_DIR/$skill" ]; then
        cp "$SKILL_DIR/$skill" "$DEST_DIR/$skill"
        INSTALLED=$((INSTALLED + 1))
    else
        echo "  Warning: $skill not found, skipping."
    fi
done

echo ""
echo "  The Cube installed successfully. ($INSTALLED skills)"
echo ""
echo "  Location: $DEST_DIR"
echo ""
echo "  Stacks:"
echo "    /cube [problem]             Core -- problem solving fundamentals"
echo "    /cube-sales [problem]       Sales -- Klaff, Rackham, Carnegie, Dixon, Ziglar, Sandler"
echo "    /cube-marketing [problem]   Marketing -- Christensen, Ries, Miller, Kim, Moore, Chen"
echo "    /cube-coding [problem]      Coding -- Decomposition, Root Cause, Constraints, Trace, Edge, MVP"
echo ""
echo "  Tools:"
echo "    /cube-quick [problem]       Fast 10-position scan (any stack)"
echo "    /cube-face [fw] [problem]   Single framework deep dive (any stack)"
echo "    /cube-guided [problem]      Interactive phase-by-phase (any stack)"
echo "    /cube-stack                 List all stacks and frameworks"
echo "    /cube-feedback              Rate an analysis"
echo ""
echo "  Open any Claude Code session and type /cube to start."
echo ""
