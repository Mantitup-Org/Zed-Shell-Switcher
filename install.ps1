# =====================================================
#  Zed Shell Switcher - Windows Installer
#  https://github.com/YOUR_USERNAME/zed-shell-switcher
# =====================================================

param([string]$Branch = "main")

$RepoBase = "https://raw.githubusercontent.com/YOUR_USERNAME/zed-shell-switcher/$Branch"
$ZedDir   = "$env:APPDATA\Zed"
$Target   = "$ZedDir\tasks.json"
$Backup   = "$ZedDir\tasks.json.bak"

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "   Zed Shell Switcher  -  Installer       " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

# 1. Check Zed is installed
if (-Not (Test-Path $ZedDir)) {
    Write-Host "[ERROR] Zed config not found at: $ZedDir" -ForegroundColor Red
    Write-Host "        Install Zed first -> https://zed.dev" -ForegroundColor Yellow
    exit 1
}
Write-Host "[OK] Zed found: $ZedDir" -ForegroundColor Green

# 2. Backup existing tasks.json
if (Test-Path $Target) {
    Copy-Item $Target $Backup -Force
    Write-Host "[OK] Backed up existing tasks.json -> tasks.json.bak" -ForegroundColor Yellow
}

# 3. Download and install
try {
    Write-Host "[..] Downloading tasks.json ..." -ForegroundColor Cyan
    Invoke-WebRequest -Uri "$RepoBase/tasks.json" -OutFile $Target -UseBasicParsing
    Write-Host ""
    Write-Host "==========================================" -ForegroundColor Green
    Write-Host "   Shell Switcher Installed!               " -ForegroundColor Green
    Write-Host "==========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host " How to use:" -ForegroundColor White
    Write-Host "   1. Open ANY project in Zed" -ForegroundColor White
    Write-Host "   2. Press Ctrl+Shift+R" -ForegroundColor Yellow
    Write-Host "   3. Pick your shell and press Enter!" -ForegroundColor White
    Write-Host ""
    Write-Host " NOTE: Your default terminal is NOT changed." -ForegroundColor Cyan
    Write-Host ""
} catch {
    Write-Host "[ERROR] Download failed: $_" -ForegroundColor Red
    Write-Host "        Check your internet and try again." -ForegroundColor Yellow
    exit 1
}
