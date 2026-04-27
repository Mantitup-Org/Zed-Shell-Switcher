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

TASKS_TARGET="$ZED_DIR/tasks.json"
TASKS_BACKUP="$ZED_DIR/tasks.json.bak"
KEYMAP_TARGET="$ZED_DIR/keymap.json"
KEYMAP_BACKUP="$ZED_DIR/keymap.json.bak"

echo ""
echo "======================================================="
echo "   Zed Shell Switcher  -  Installer - By Mantitup     "
echo "======================================================="
echo ""

# 1. Check Zed exists
if [ ! -d "$ZED_DIR" ]; then
    echo "[ERROR] Zed config not found at: $ZED_DIR"
    echo "        Install Zed first -> https://zed.dev"
    exit 1
fi
echo "[OK] Zed found: $ZED_DIR"

# 2. Backup existing tasks.json
if [ -f "$TASKS_TARGET" ]; then
    cp "$TASKS_TARGET" "$TASKS_BACKUP"
    echo "[OK] Backed up existing tasks.json -> tasks.json.bak"
fi

# 3. Backup existing keymap.json
if [ -f "$KEYMAP_TARGET" ]; then
    cp "$KEYMAP_TARGET" "$KEYMAP_BACKUP"
    echo "[OK] Backed up existing keymap.json -> keymap.json.bak"
fi

# 4. Download tasks.json and keymap.json
echo "[..] Downloading tasks.json ..."
if ! curl -fsSL "$REPO_BASE/tasks.json" -o "$TASKS_TARGET"; then
    echo "[ERROR] Failed to download tasks.json. Check your internet and try again."
    exit 1
fi

echo "[..] Downloading keymap.json ..."
if ! curl -fsSL "$REPO_BASE/keymap.json" -o "$KEYMAP_TARGET"; then
    echo "[ERROR] Failed to download keymap.json. Check your internet and try again."
    exit 1
fi

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
