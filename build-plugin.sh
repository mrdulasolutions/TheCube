#!/bin/bash
# The Cube -- Plugin Builder
# Assembles the plugin zip for distribution via GitHub releases
# and Claude Code plugin marketplace

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_DIR="$SCRIPT_DIR/.claude/skills"
PLUGIN_DIR="$SCRIPT_DIR/plugin"
BUILD_DIR="$SCRIPT_DIR/dist"
VERSION="2.2.0"
ARCHIVE_NAME="the-cube-v${VERSION}"

# Skills to include
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
    "cube-models"
    "cube-enhance"
    "cube-stack"
    "cube-quick"
    "cube-face"
    "cube-guided"
    "cube-feedback"
)

echo ""
echo "  Building The Cube plugin v${VERSION}..."
echo ""

# Clean previous build
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR/the-cube/.claude-plugin"
mkdir -p "$BUILD_DIR/the-cube/skills"

# Copy plugin manifest
cp "$PLUGIN_DIR/.claude-plugin/plugin.json" "$BUILD_DIR/the-cube/.claude-plugin/plugin.json"

# Copy skills into plugin format (skills/<name>/SKILL.md)
COPIED=0
for skill in "${SKILLS[@]}"; do
    src="$SKILL_DIR/${skill}.md"
    if [ -f "$src" ]; then
        mkdir -p "$BUILD_DIR/the-cube/skills/$skill"
        cp "$src" "$BUILD_DIR/the-cube/skills/$skill/SKILL.md"
        COPIED=$((COPIED + 1))
    else
        echo "  Warning: ${skill}.md not found, skipping."
    fi
done

# Copy documentation
cp "$SCRIPT_DIR/README.md" "$BUILD_DIR/the-cube/"
cp "$SCRIPT_DIR/ETHOS.md" "$BUILD_DIR/the-cube/"
cp "$SCRIPT_DIR/LICENSE" "$BUILD_DIR/the-cube/"
cp "$SCRIPT_DIR/CLAUDE.md" "$BUILD_DIR/the-cube/"

# Copy chat setup files
mkdir -p "$BUILD_DIR/the-cube/chat"
cp "$SCRIPT_DIR/chat/SETUP.md" "$BUILD_DIR/the-cube/chat/"
cp "$SCRIPT_DIR/chat/project-instructions.md" "$BUILD_DIR/the-cube/chat/"

# Build zip
cd "$BUILD_DIR"
zip -r "${ARCHIVE_NAME}.zip" the-cube/ -x "*.DS_Store" > /dev/null

echo "  Plugin built successfully."
echo ""
echo "  Archive: dist/${ARCHIVE_NAME}.zip"
echo "  Skills:  $COPIED"
echo "  Size:    $(du -h "${ARCHIVE_NAME}.zip" | cut -f1)"
echo ""
echo "  To create a GitHub release:"
echo "    gh release create v${VERSION} dist/${ARCHIVE_NAME}.zip --title 'The Cube v${VERSION}' --notes-file CHANGELOG.md"
echo ""
