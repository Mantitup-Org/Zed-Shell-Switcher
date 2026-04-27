#!/bin/bash
# =====================================================
#  Zed Shell Switcher - Mac / Linux Installer
#  https://github.com/Mantitup-Org/Zed-Shell-Switcher
# =====================================================

REPO_BASE="https://raw.githubusercontent.com/Mantitup-Org/Zed-Shell-Switcher/main"

# Detect OS config path
if [[ "$OSTYPE" == "darwin"* ]]; then
    ZED_DIR="$HOME/Library/Application Support/Zed"
else
    ZED_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/zed"
fi

TARGET="$ZED_DIR/tasks.json"
BACKUP="$ZED_DIR/tasks.json.bak"

echo ""
echo "========================================="
echo "   Zed Shell Switcher  -  Installer      "
echo "========================================="
echo ""

# Check Zed exists
if [ ! -d "$ZED_DIR" ]; then
    echo "[ERROR] Zed config not found at: $ZED_DIR"
    echo "        Install Zed first -> https://zed.dev"
    exit 1
fi
echo "[OK] Zed found: $ZED_DIR"

# Backup
if [ -f "$TARGET" ]; then
    cp "$TARGET" "$BACKUP"
    echo "[OK] Backed up existing tasks.json -> tasks.json.bak"
fi

# Download
echo "[..] Downloading tasks.json ..."
if curl -fsSL "$REPO_BASE/tasks.json" -o "$TARGET"; then
    echo ""
    echo "========================================="
    echo "   Shell Switcher Installed!              "
    echo "========================================="
    echo ""
    echo " How to use:"
    echo "   1. Open ANY project in Zed"
    echo "   2. Press Ctrl+Shift+R"
    echo "   3. Pick your shell and press Enter!"
    echo ""
    echo " NOTE: Your default terminal is NOT changed."
    echo ""
else
    echo "[ERROR] Download failed. Check your internet and try again."
    exit 1
fi
