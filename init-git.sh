#!/bin/bash

# ====================================
# Chez Benito - Git Initialization
# ====================================

echo "🌮 Initializing Git repository for Chez Benito..."
echo ""

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Initialize git if not already done
if [ ! -d .git ]; then
    echo -e "${YELLOW}Initializing Git repository...${NC}"
    git init
    echo -e "${GREEN}✅ Git repository initialized${NC}"
else
    echo -e "${GREEN}✅ Git repository already initialized${NC}"
fi

echo ""

# Get GitHub username
echo -e "${BLUE}GitHub Configuration${NC}"
read -p "Enter your GitHub username (default: Aesin-hub): " github_user
github_user=${github_user:-Aesin-hub}

# Set remote origin
echo ""
echo -e "${YELLOW}Setting up remote repository...${NC}"
git remote remove origin 2>/dev/null  # Remove if exists
git remote add origin "https://github.com/$github_user/chez-benito.git"
echo -e "${GREEN}✅ Remote origin set to: https://github.com/$github_user/chez-benito.git${NC}"

echo ""

# Create main and dev branches
echo -e "${YELLOW}Setting up branches...${NC}"

# Add all files
git add .

# Initial commit
git commit -m "Initial commit: Project structure and documentation

- Add comprehensive README with project overview
- Add CONTRIBUTING guidelines
- Add QUICKSTART guide for developers
- Add LICENSE (MIT)
- Add .gitignore for Node.js/React
- Add setup scripts and Git commands reference
- Set up monorepo structure (frontend/backend/docs)
"

echo -e "${GREEN}✅ Initial commit created${NC}"

# Rename branch to main if needed
current_branch=$(git branch --show-current)
if [ "$current_branch" != "main" ]; then
    git branch -M main
    echo -e "${GREEN}✅ Branch renamed to main${NC}"
fi

# Create dev branch
git checkout -b dev
echo -e "${GREEN}✅ Dev branch created${NC}"

# Switch back to main
git checkout main

echo ""
echo -e "${GREEN}=================================="
echo "✅ Git Initialization Complete!"
echo "==================================${NC}"
echo ""
echo "📝 Next steps:"
echo ""
echo "1. Create the repository on GitHub:"
echo -e "   ${BLUE}https://github.com/new${NC}"
echo -e "   Repository name: ${YELLOW}chez-benito${NC}"
echo ""
echo "2. Push to GitHub:"
echo -e "   ${YELLOW}git push -u origin main${NC}"
echo -e "   ${YELLOW}git push -u origin dev${NC}"
echo ""
echo "3. Set dev as default branch (optional):"
echo "   - Go to GitHub repo Settings > Branches"
echo "   - Change default branch to 'dev'"
echo ""
echo "🌮 Your repository is ready!"
echo ""
