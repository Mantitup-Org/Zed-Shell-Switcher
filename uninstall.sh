#!/bin/bash
# =====================================================
#  Zed Shell Switcher - Mac / Linux Uninstaller
#  https://github.com/Mantitup-Org/Zed-Shell-Switcher
# =====================================================

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
echo "========================================="
echo "   Zed Shell Switcher  -  Uninstaller    "
echo "========================================="
echo ""

# Restore or remove tasks.json
if [ -f "$TASKS_BACKUP" ]; then
    cp "$TASKS_BACKUP" "$TASKS_TARGET"
    rm "$TASKS_BACKUP"
    echo "[OK] Restored your previous tasks.json"
elif [ -f "$TASKS_TARGET" ]; then
    rm "$TASKS_TARGET"
    echo "[OK] tasks.json removed"
else
    echo "[INFO] No tasks.json found, skipping."
fi

# Restore or remove keymap.json
if [ -f "$KEYMAP_BACKUP" ]; then
    cp "$KEYMAP_BACKUP" "$KEYMAP_TARGET"
    rm "$KEYMAP_BACKUP"
    echo "[OK] Restored your previous keymap.json"
elif [ -f "$KEYMAP_TARGET" ]; then
    rm "$KEYMAP_TARGET"
    echo "[OK] keymap.json removed"
else
    echo "[INFO] No keymap.json found, skipping."
fi

echo ""
echo " Shell Switcher removed successfully."
echo ""
