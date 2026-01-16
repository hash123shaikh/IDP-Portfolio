#!/bin/bash

# IDP Portfolio - Git Repository Setup Script
# This script initializes the repository and provides guidance for pushing to GitHub

echo "=================================================="
echo "   IDP Portfolio - Repository Setup"
echo "=================================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Error: Git is not installed on your system."
    echo "Please install Git first: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Initialize git repository if not already initialized
if [ ! -d .git ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Repository initialized"
else
    echo "✅ Git repository already initialized"
fi

echo ""
echo "📋 Repository Structure:"
echo ""
cat repository_structure.txt
echo ""

# Create initial commit if no commits exist
if ! git rev-parse --verify HEAD &> /dev/null; then
    echo "📝 Creating initial commit..."
    git add .
    git commit -m "Initial commit: IDP Portfolio setup with 2024 and 2026 IDPs

- Added comprehensive README with career goals and timeline
- Created CHANGELOG to track progress and achievements
- Included 2024 and 2026 IDP documents
- Added UW IDP Guide template
- Created mentoring guidelines and update checklist
- Included Quick Start guide for repository usage"
    echo "✅ Initial commit created"
else
    echo "✅ Repository already has commits"
fi

echo ""
echo "=================================================="
echo "   Next Steps: Push to GitHub"
echo "=================================================="
echo ""
echo "1. Create a new repository on GitHub:"
echo "   - Go to: https://github.com/new"
echo "   - Repository name: IDP-Portfolio"
echo "   - Visibility: Private (recommended)"
echo "   - DO NOT initialize with README"
echo ""
echo "2. Connect this repository to GitHub:"
echo "   Replace YOUR_USERNAME with your GitHub username:"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/IDP-Portfolio.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Verify on GitHub:"
echo "   - Visit: https://github.com/YOUR_USERNAME/IDP-Portfolio"
echo "   - Check that all files are present"
echo ""
echo "=================================================="
echo "   Quick Commands Reference"
echo "=================================================="
echo ""
echo "# Check repository status:"
echo "git status"
echo ""
echo "# Add changes:"
echo "git add <file>"
echo ""
echo "# Commit changes:"
echo "git commit -m \"Your message here\""
echo ""
echo "# Push to GitHub:"
echo "git push origin main"
echo ""
echo "# View commit history:"
echo "git log --oneline"
echo ""
echo "=================================================="
echo ""
echo "For detailed instructions, see QUICK_START.md"
echo ""
echo "✨ Setup complete! Happy tracking! ✨"
echo ""
