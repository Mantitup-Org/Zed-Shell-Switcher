# =====================================================
#  Zed Shell Switcher - Windows Uninstaller
#  https://github.com/Mantitup-Org/Zed-Shell-Switcher
# =====================================================

$ZedDir = "$env:APPDATA\Zed"
$Target = "$ZedDir\tasks.json"
$Backup = "$ZedDir\tasks.json.bak"

Write-Host ""
Write-Host "=========================================="
Write-Host "   Zed Shell Switcher  -  Uninstaller     "
Write-Host "=========================================="
Write-Host ""

if (Test-Path $Backup)
{
    Copy-Item $Backup $Target -Force
    Remove-Item $Backup -Force
    Write-Host "[OK] Restored your previous tasks.json"
} elseif (Test-Path $Target)
{
    Remove-Item $Target -Force
    Write-Host "[OK] tasks.json removed"
} else
{
    Write-Host "[INFO] Nothing to uninstall."
}

Write-Host ""
Write-Host " Shell Switcher removed successfully."
Write-Host ""
