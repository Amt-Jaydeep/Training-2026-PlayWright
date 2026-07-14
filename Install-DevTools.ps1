#Requires -RunAsAdministrator
<#
.SYNOPSIS
    Auto Install Dev Tools: uv, Git, Playwright, Zed (No OpenCode)
.DESCRIPTION
    One-click install script for training computer
    Must run as Administrator
.NOTES
    Right-click -> Run as Administrator PowerShell
    Or run: .\Install-DevTools.ps1
#>

# ============================================================
# Config
# ============================================================
$LogFile = "$env:TEMP\DevTools-Install-$(Get-Date -Format 'yyyyMMdd-HHmmss').log"
$PythonVersion = "3.12"

# ============================================================
# Functions
# ============================================================

function Write-Log {
    param([string]$Message, [string]$Level = "INFO")
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logMessage = "[$timestamp] [$Level] $Message"
    Write-Host $logMessage -ForegroundColor $(
        switch ($Level) {
            "OK"    { "Green" }
            "WARN"  { "Yellow" }
            "ERROR" { "Red" }
            default { "White" }
        }
    )
    Add-Content -Path $LogFile -Value $logMessage
}

function Test-CommandExists {
    param([string]$Command)
    $null -ne (Get-Command $Command -ErrorAction SilentlyContinue)
}

function Install-WithWinget {
    param(
        [string]$PackageId,
        [string]$DisplayName
    )
    
    Write-Log "Installing $DisplayName..."
    
    if (Test-CommandExists "winget") {
        winget install --id $PackageId --accept-source-agreements --accept-package-agreements --silent
        if ($LASTEXITCODE -eq 0) {
            Write-Log "$DisplayName installed successfully" "OK"
            return $true
        } else {
            Write-Log "$DisplayName install failed (winget)" "ERROR"
            return $false
        }
    } else {
        Write-Log "winget not found, skip $DisplayName" "WARN"
        return $false
    }
}

# ============================================================
# Main
# ============================================================

Clear-Host
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   Dev Tools Auto Install Script   " -ForegroundColor Cyan
Write-Host "   uv / Git / Playwright / Zed   " -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Log file: $LogFile" -ForegroundColor DarkGray
Write-Host ""

# ============================================================
# 1. Install uv
# ============================================================
Write-Log "========== [1/4] Install uv =========="

if (Test-CommandExists "uv") {
    $uvVersion = uv --version 2>$null
    Write-Log "uv already installed: $uvVersion" "OK"
} else {
    Write-Log "Downloading and installing uv..."
    try {
        irm https://astral.sh/uv/install.ps1 | iex
        $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
        
        if (Test-CommandExists "uv") {
            $uvVersion = uv --version 2>$null
            Write-Log "uv installed: $uvVersion" "OK"
        } else {
            Write-Log "uv installed but not in PATH, please restart terminal" "WARN"
        }
    } catch {
        Write-Log "uv install failed: $_" "ERROR"
    }
}

Write-Host ""

# ============================================================
# 2. Install Git
# ============================================================
Write-Log "========== [2/4] Install Git =========="

if (Test-CommandExists "git") {
    $gitVersion = git --version 2>$null
    Write-Log "Git already installed: $gitVersion" "OK"
} else {
    Write-Log "Installing Git via winget..."
    $installed = Install-WithWinget -PackageId "Git.Git" -DisplayName "Git"
    
    if (-not $installed) {
        Write-Log "Trying direct download..." "WARN"
        $gitUrl = "https://github.com/git-for-windows/git/releases/latest/download/Git-2.45.0-64-bit.exe"
        $gitInstaller = "$env:TEMP\GitInstaller.exe"
        
        try {
            Invoke-WebRequest -Uri $gitUrl -OutFile $gitInstaller -UseBasicParsing
            Start-Process -FilePath $gitInstaller -ArgumentList "/VERYSILENT", "/NORESTART" -Wait
            Write-Log "Git installed" "OK"
        } catch {
            Write-Log "Git install failed, please install manually" "ERROR"
        }
    }
    
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
}

Write-Host ""

# ============================================================
# 3. Install Playwright
# ============================================================
Write-Log "========== [3/4] Install Playwright =========="

if (Test-CommandExists "uv") {
    $projectDir = "PlaywrightTraining"
    $currentDir = Get-Location
    
    if (-not (Test-Path $projectDir)) {
        Write-Log "Creating project folder: $projectDir"
        New-Item -ItemType Directory -Path $projectDir -Force | Out-Null
    }
    
    Set-Location $projectDir
    
    if (-not (Test-Path "pyproject.toml")) {
        Write-Log "Initializing uv project..."
        uv init --no-readme
    }
    
    Write-Log "Setting Python $PythonVersion..."
    uv python pin $PythonVersion
    
    if (-not (Test-Path ".venv")) {
        Write-Log "Creating virtual environment..."
        uv venv
    }
    
    Write-Log "Installing Playwright..."
    uv pip install playwright
    
    Write-Log "Installing Playwright browsers (Chromium, Firefox, WebKit)..."
    uv run playwright install --with-deps
    
    if ($?) {
        Write-Log "Playwright installed successfully" "OK"
    } else {
        Write-Log "Playwright install may have issues" "WARN"
    }
    
    Set-Location $currentDir
} else {
    Write-Log "uv not found, cannot install Playwright" "ERROR"
    Write-Log "Please install uv first, then run: uv pip install playwright" "WARN"
}

Write-Host ""

# ============================================================
# 4. Install Zed Editor
# ============================================================
Write-Log "========== [4/4] Install Zed =========="

if (Test-CommandExists "zed") {
    Write-Log "Zed already installed" "OK"
} else {
    Write-Log "Installing Zed..."
    
    $installed = Install-WithWinget -PackageId "Zed.Zed" -DisplayName "Zed Editor"
    
    if (-not $installed) {
        Write-Log "Trying scoop..." "WARN"
        if (Test-CommandExists "scoop") {
            scoop install zed
        } else {
            Write-Log "Cannot auto-install Zed, please download manually" "WARN"
            Write-Host ""
            Write-Host "========================================" -ForegroundColor Yellow
            Write-Host " Please download Zed:" -ForegroundColor Yellow
            Write-Host " https://zed.dev/download" -ForegroundColor Yellow
            Write-Host "========================================" -ForegroundColor Yellow
            Write-Host ""
            
            $response = Read-Host "Open download page? (Y/N)"
            if ($response -eq 'Y' -or $response -eq 'y') {
                Start-Process "https://zed.dev/download"
            }
        }
    }
}

Write-Host ""

# ============================================================
# Summary
# ============================================================
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "          Installation Summary          " -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$results = @()

if (Test-CommandExists "uv") {
    $results += @{ Tool = "uv"; Status = "V"; Version = (uv --version 2>$null) }
} else {
    $results += @{ Tool = "uv"; Status = "X"; Version = "Not installed" }
}

if (Test-CommandExists "git") {
    $results += @{ Tool = "Git"; Status = "V"; Version = (git --version 2>$null) }
} else {
    $results += @{ Tool = "Git"; Status = "X"; Version = "Not installed" }
}

if (Test-CommandExists "uv") {
    $pyVer = uv run python --version 2>$null
    if ($pyVer) {
        $results += @{ Tool = "Python"; Status = "V"; Version = $pyVer }
    } else {
        $results += @{ Tool = "Python"; Status = "X"; Version = "Not installed" }
    }
} else {
    $results += @{ Tool = "Python"; Status = "X"; Version = "Need uv" }
}

if (Test-CommandExists "uv") {
    $pwVer = uv pip list 2>$null | Select-String "playwright"
    if ($pwVer) {
        $results += @{ Tool = "Playwright"; Status = "V"; Version = $pwVer.ToString().Trim() }
    } else {
        $results += @{ Tool = "Playwright"; Status = "X"; Version = "Not installed" }
    }
} else {
    $results += @{ Tool = "Playwright"; Status = "X"; Version = "Need uv" }
}

if (Test-CommandExists "zed") {
    $results += @{ Tool = "Zed"; Status = "V"; Version = "Installed" }
} else {
    $results += @{ Tool = "Zed"; Status = "X"; Version = "Not installed" }
}

foreach ($r in $results) {
    $icon = if ($r.Status -eq "V") { "[OK]" } else { "[--]" }
    $color = if ($r.Status -eq "V") { "Green" } else { "Red" }
    Write-Host "  $icon " -ForegroundColor $color -NoNewline
    Write-Host "$($r.Tool.PadRight(12))" -NoNewline
    Write-Host "$($r.Version)"
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Log file: $LogFile" -ForegroundColor DarkGray
Write-Host ""

$failedTools = $results | Where-Object { $_.Status -eq "X" }
if ($failedTools) {
    Write-Host "Some tools failed, suggestions:" -ForegroundColor Yellow
    Write-Host "  1. Restart terminal (refresh PATH)" -ForegroundColor Yellow
    Write-Host "  2. Run this script as Administrator" -ForegroundColor Yellow
    Write-Host ""
}

Write-Host "Done! Press any key to exit..." -ForegroundColor Cyan
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
