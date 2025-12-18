#!/bin/bash

# Push Gloria Victis Interactive Map to GitHub
# Run this script in Git Bash

echo "========================================"
echo "Push to GitHub Repository"
echo "========================================"
echo ""
echo "Repository: https://github.com/SerSavage/gvlegacy-interactive-map.git"
echo ""

# Navigate to script directory
cd "$(dirname "$0")"

# Check if git is available
if ! command -v git &> /dev/null; then
    echo "ERROR: Git is not installed or not in PATH!"
    echo ""
    echo "Please install Git from: https://git-scm.com/download/win"
    exit 1
fi

echo "[1/6] Initializing Git repository..."
if [ ! -d ".git" ]; then
    git init
    echo "  ✓ Git initialized"
else
    echo "  ✓ Git already initialized"
fi

echo ""
echo "[2/6] Adding files..."
git add .
if [ $? -ne 0 ]; then
    echo "  ✗ ERROR: Failed to add files"
    exit 1
else
    echo "  ✓ Files added"
fi

echo ""
echo "[3/6] Checking for changes..."
git status --short

echo ""
echo "[4/6] Committing changes..."
git commit -m "Initial commit: Gloria Victis Interactive Map"
if [ $? -ne 0 ]; then
    echo "  ⚠ No changes to commit, or commit failed"
    echo "  This is OK if files are already committed"
else
    echo "  ✓ Changes committed"
fi

echo ""
echo "[5/6] Setting remote..."
git remote remove origin 2>/dev/null
git remote add origin https://github.com/SerSavage/gvlegacy-interactive-map.git
if [ $? -ne 0 ]; then
    echo "  ✗ ERROR: Failed to set remote"
    exit 1
else
    echo "  ✓ Remote set"
fi

echo ""
echo "[6/6] Pushing to GitHub..."
git branch -M main
git push -u origin main

if [ $? -ne 0 ]; then
    echo ""
    echo "  ⚠ Push failed. This might be because:"
    echo "  1. You need to authenticate (GitHub username/password or token)"
    echo "  2. The repository is not empty"
    echo "  3. Network issues"
    echo ""
    echo "  For authentication, you may need to:"
    echo "  - Use a Personal Access Token instead of password"
    echo "  - Or use GitHub Desktop for easier authentication"
    echo ""
    echo "  To create a Personal Access Token:"
    echo "  1. Go to: https://github.com/settings/tokens"
    echo "  2. Generate new token (classic)"
    echo "  3. Select 'repo' scope"
    echo "  4. Use token as password when prompted"
    exit 1
else
    echo "  ✓ Successfully pushed to GitHub!"
    echo ""
    echo "  Your map will be available at:"
    echo "  https://sersavage.github.io/gvlegacy-interactive-map/"
    echo ""
    echo "  Note: GitHub Pages may take a few minutes to activate."
    echo "  Go to repository Settings > Pages to enable it."
fi

echo ""
read -p "Press Enter to exit..."

