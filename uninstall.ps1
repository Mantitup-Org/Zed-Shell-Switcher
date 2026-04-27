# =====================================================
#  Zed Shell Switcher - Windows Uninstaller
#  https://github.com/YOUR_USERNAME/zed-shell-switcher
# =====================================================

$ZedDir = "$env:APPDATA\Zed"
$Target = "$ZedDir\tasks.json"
$Backup = "$ZedDir\tasks.json.bak"

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "   Zed Shell Switcher  -  Uninstaller     " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

if (Test-Path $Backup) {
    Copy-Item $Backup $Target -Force
    Remove-Item $Backup -Force
    Write-Host "[OK] Restored your previous tasks.json" -ForegroundColor Green
} elseif (Test-Path $Target) {
    Remove-Item $Target -Force
    Write-Host "[OK] tasks.json removed" -ForegroundColor Green
} else {
    Write-Host "[INFO] Nothing to uninstall." -ForegroundColor Yellow
}

Write-Host ""
Write-Host " Shell Switcher removed successfully." -ForegroundColor Green
Write-Host ""
