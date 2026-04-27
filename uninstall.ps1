# =====================================================
#  Zed Shell Switcher - Windows Uninstaller
#  https://github.com/Mantitup-Org/Zed-Shell-Switcher
# =====================================================

$ZedDir       = "$env:APPDATA\Zed"
$TasksTarget  = "$ZedDir\tasks.json"
$TasksBackup  = "$ZedDir\tasks.json.bak"
$KeymapTarget = "$ZedDir\keymap.json"
$KeymapBackup = "$ZedDir\keymap.json.bak"

Write-Host ""
Write-Host "=========================================="
Write-Host "   Zed Shell Switcher  -  Uninstaller     "
Write-Host "=========================================="
Write-Host ""

# Restore or remove tasks.json
if (Test-Path $TasksBackup)
{
    Copy-Item $TasksBackup $TasksTarget -Force
    Remove-Item $TasksBackup -Force
    Write-Host "[OK] Restored your previous tasks.json"
} elseif (Test-Path $TasksTarget)
{
    Remove-Item $TasksTarget -Force
    Write-Host "[OK] tasks.json removed"
} else
{
    Write-Host "[INFO] No tasks.json found, skipping."
}

# Restore or remove keymap.json
if (Test-Path $KeymapBackup)
{
    Copy-Item $KeymapBackup $KeymapTarget -Force
    Remove-Item $KeymapBackup -Force
    Write-Host "[OK] Restored your previous keymap.json"
} elseif (Test-Path $KeymapTarget)
{
    Remove-Item $KeymapTarget -Force
    Write-Host "[OK] keymap.json removed"
} else
{
    Write-Host "[INFO] No keymap.json found, skipping."
}

Write-Host ""
Write-Host " Shell Switcher removed successfully."
Write-Host ""
