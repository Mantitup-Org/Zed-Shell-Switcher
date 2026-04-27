# =====================================================
#  Zed Shell Switcher - Windows Installer
#  https://github.com/Mantitup-Org/Zed-Shell-Switcher
# =====================================================

param([string]$Branch = "main")

$RepoBase    = "https://raw.githubusercontent.com/Mantitup-Org/Zed-Shell-Switcher/$Branch"
$ZedDir      = "$env:APPDATA\Zed"
$TasksTarget = "$ZedDir\tasks.json"
$TasksBackup = "$ZedDir\tasks.json.bak"
$KeymapTarget = "$ZedDir\keymap.json"
$KeymapBackup = "$ZedDir\keymap.json.bak"

Write-Host ""
Write-Host "=========================================="
Write-Host "   Zed Shell Switcher  -  Installer       "
Write-Host "=========================================="
Write-Host ""

# 1. Check Zed is installed
if (-Not (Test-Path $ZedDir))
{
    Write-Host "[ERROR] Zed config not found at: $ZedDir"
    Write-Host "        Install Zed first -> https://zed.dev"
    exit 1
}
Write-Host "[OK] Zed found: $ZedDir"

# 2. Backup existing tasks.json
if (Test-Path $TasksTarget)
{
    Copy-Item $TasksTarget $TasksBackup -Force
    Write-Host "[OK] Backed up existing tasks.json -> tasks.json.bak"
}

# 3. Backup existing keymap.json
if (Test-Path $KeymapTarget)
{
    Copy-Item $KeymapTarget $KeymapBackup -Force
    Write-Host "[OK] Backed up existing keymap.json -> keymap.json.bak"
}

# 4. Download and install tasks.json and keymap.json
try
{
    Write-Host "[..] Downloading tasks.json ..."
    Invoke-WebRequest -Uri "$RepoBase/tasks.json" -OutFile $TasksTarget -UseBasicParsing

    Write-Host "[..] Downloading keymap.json ..."
    Invoke-WebRequest -Uri "$RepoBase/keymap.json" -OutFile $KeymapTarget -UseBasicParsing

    Write-Host ""
    Write-Host "=========================================="
    Write-Host "   Shell Switcher Installed!               "
    Write-Host "=========================================="
    Write-Host ""
    Write-Host " How to use:"
    Write-Host "   1. Open ANY project in Zed"
    Write-Host "   2. Press Ctrl+Shift+R"
    Write-Host "   3. Pick your shell and press Enter!"
    Write-Host ""
    Write-Host " NOTE: Your default terminal is NOT changed."
    Write-Host ""
} catch
{
    Write-Host "[ERROR] Download failed: $_"
    Write-Host "        Check your internet and try again."
    exit 1
}
