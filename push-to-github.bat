@echo off
REM Push map to GitHub repository
title Push to GitHub
setlocal

echo ========================================
echo Push to GitHub Repository
echo ========================================
echo.
echo Repository: https://github.com/SerSavage/gvlegacy-interactive-map.git
echo.

cd /d "%~dp0"

REM Check if git is available
where git >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git is not installed or not in PATH!
    echo.
    echo Please install Git from: https://git-scm.com/download/win
    echo Or use GitHub Desktop: https://desktop.github.com/
    echo.
    pause
    exit /b 1
)

echo [1/5] Initializing Git repository...
if not exist ".git" (
    git init
    echo   ✓ Git initialized
) else (
    echo   ✓ Git already initialized
)

echo.
echo [2/5] Adding files...
git add .
if errorlevel 1 (
    echo   ✗ ERROR: Failed to add files
    pause
    exit /b 1
) else (
    echo   ✓ Files added
)

echo.
echo [3/5] Checking for changes...
git status --short
if errorlevel 1 (
    echo   ✗ ERROR: Git status failed
    pause
    exit /b 1
)

echo.
echo [4/5] Committing changes...
git commit -m "Initial commit: Gloria Victis Interactive Map"
if errorlevel 1 (
    echo   ⚠ No changes to commit, or commit failed
    echo   This is OK if files are already committed
) else (
    echo   ✓ Changes committed
)

echo.
echo [5/5] Setting remote and pushing...
git remote remove origin 2>nul
git remote add origin https://github.com/SerSavage/gvlegacy-interactive-map.git
if errorlevel 1 (
    echo   ✗ ERROR: Failed to set remote
    pause
    exit /b 1
)

git branch -M main
git push -u origin main
if errorlevel 1 (
    echo.
    echo   ⚠ Push failed. This might be because:
    echo   1. You need to authenticate (GitHub username/password or token)
    echo   2. The repository is not empty
    echo   3. Network issues
    echo.
    echo   For authentication, you may need to:
    echo   - Use a Personal Access Token instead of password
    echo   - Or use GitHub Desktop for easier authentication
    echo.
) else (
    echo   ✓ Successfully pushed to GitHub!
    echo.
    echo   Your map will be available at:
    echo   https://sersavage.github.io/gvlegacy-interactive-map/
    echo.
    echo   Note: GitHub Pages may take a few minutes to activate.
    echo   Go to repository Settings ^> Pages to enable it.
)

echo.
pause

