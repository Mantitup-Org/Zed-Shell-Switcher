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

TARGET="$ZED_DIR/tasks.json"
BACKUP="$ZED_DIR/tasks.json.bak"

echo ""
echo "========================================="
echo "   Zed Shell Switcher  -  Uninstaller    "
echo "========================================="
echo ""

if [ -f "$BACKUP" ]; then
    cp "$BACKUP" "$TARGET"
    rm "$BACKUP"
    echo "[OK] Restored your previous tasks.json"
elif [ -f "$TARGET" ]; then
    rm "$TARGET"
    echo "[OK] tasks.json removed"
else
    echo "[INFO] Nothing to uninstall."
fi

echo ""
echo " Shell Switcher removed successfully."
echo ""
