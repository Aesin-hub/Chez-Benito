# 📋 GitHub Repository Setup Checklist

Follow these steps to properly set up your Chez Benito repository on GitHub.

## ✅ Pre-Setup (Local)

- [ ] All project files created (README, .gitignore, LICENSE, etc.)
- [ ] Run `./init-git.sh` to initialize Git locally
- [ ] Review the initial commit

## 🌐 Create GitHub Repository

1. **Go to GitHub:** https://github.com/new

2. **Repository Settings:**
   - [ ] Repository name: `chez-benito`
   - [ ] Description: `Full-Stack MERN Restaurant Management System with Admin Dashboard`
   - [ ] Visibility: `Public` (for portfolio)
   - [ ] **DO NOT** initialize with README, .gitignore, or license (we have them locally)

3. **Click "Create repository"**

## 📤 Push to GitHub

Run these commands in your terminal:

```bash
# Push main branch
git push -u origin main

# Push dev branch
git push -u origin dev
```

## ⚙️ Configure Repository Settings

### 1. General Settings
- [ ] Go to: Settings > General
- [ ] Enable "Issues"
- [ ] Enable "Projects" (optional)
- [ ] Enable "Wiki" (optional)
- [ ] Disable "Sponsorships" (unless you want it)

### 2. Set Default Branch
- [ ] Go to: Settings > Branches
- [ ] Change default branch to `dev` (development happens here)
- [ ] Set up branch protection rules:

#### Main Branch Protection:
- [ ] Require pull request before merging
- [ ] Require approvals: 1 (if working with others)
- [ ] Require status checks to pass

#### Dev Branch Protection:
- [ ] Enable "Require linear history" (optional, keeps history clean)

### 3. Add Topics/Tags
- [ ] Go to main repository page
- [ ] Click "Add topics"
- [ ] Add: `react`, `nodejs`, `express`, `mongodb`, `mern-stack`, `restaurant-management`, `redux-toolkit`, `vite`, `scss`, `portfolio-project`

### 4. Add Repository Description & Website
- [ ] Add description: "🌮 Full-Stack MERN Restaurant Management System - Admin dashboard for inventory, recipes, sales tracking & financial reporting"
- [ ] Add website: (your deployed URL once live)

### 5. Configure GitHub Pages (Optional - for documentation)
- [ ] Go to: Settings > Pages
- [ ] Source: Deploy from branch
- [ ] Branch: `main`, folder: `/docs` (if you create HTML docs)

## 🏷️ Create Initial Release (After First Milestone)

When Phase 1 is complete:

- [ ] Go to: Releases > "Create a new release"
- [ ] Tag: `v0.1.0`
- [ ] Title: "Phase 1: Foundations & Authentication"
- [ ] Description: List completed features
- [ ] Mark as "pre-release"

## 📊 Set Up Project Board (Optional but Recommended)

1. **Go to:** Projects > "New project"

2. **Create Board:**
   - [ ] Name: "Chez Benito Development"
   - [ ] Template: "Board"
   - [ ] Columns: Backlog, To Do, In Progress, In Review, Done

3. **Import from Notion:**
   - [ ] Manually create issues from your Notion Kanban
   - [ ] Or link Notion board (via integrations)

## 🔔 Configure Notifications

- [ ] Go to: Settings > Notifications
- [ ] Watch the repository (you'll get updates on issues/PRs)
- [ ] Configure email preferences

## 🤝 Collaboration Settings (If Working with Others)

### Add Collaborators:
- [ ] Go to: Settings > Collaborators
- [ ] Add team members if any

### Set Up Code Review:
- [ ] Require reviews on pull requests
- [ ] Set up CODEOWNERS file (optional)

## 📝 Create Issues for Phase 1

Create issues for initial tasks (examples):

- [ ] Issue #1: "Setup React + Vite frontend"
- [ ] Issue #2: "Setup Express + MongoDB backend"  
- [ ] Issue #3: "Implement user authentication (JWT)"
- [ ] Issue #4: "Create protected routes"

Label them with: `setup`, `backend`, `frontend`, `Phase-1`

## 🎨 Customize Repository

### Add Repository Banner (Optional):
- [ ] Create a banner image (1280x640px)
- [ ] Go to: Settings > General > Social Preview
- [ ] Upload banner

### Create Issue Templates:
Create `.github/ISSUE_TEMPLATE/` folder with templates for:
- [ ] Bug reports
- [ ] Feature requests
- [ ] Questions

### Create Pull Request Template:
- [ ] Create `.github/PULL_REQUEST_TEMPLATE.md`

## 🔒 Security

- [ ] Go to: Security > Security policy
- [ ] Enable "Dependency alerts"
- [ ] Enable "Dependabot security updates"
- [ ] Add SECURITY.md file (how to report vulnerabilities)

## 📈 Add Badges to README

Update README.md with status badges:

```markdown
![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![Coverage](https://img.shields.io/badge/coverage-0%25-red)
![License](https://img.shields.io/badge/license-MIT-blue)
![Version](https://img.shields.io/badge/version-0.1.0-orange)
```

## ✅ Final Verification

- [ ] Repository is public and accessible
- [ ] README displays correctly with images
- [ ] All files are committed (no sensitive data!)
- [ ] .gitignore is working (node_modules not pushed)
- [ ] Both `main` and `dev` branches exist
- [ ] Remote URLs are correct

## 🎯 You're All Set!

Your repository is now professionally set up and ready for development.

**Next Step:** Start Phase 1 - Setup & Foundations! 🚀

---

**Pro Tip:** Pin your most important issues and keep your README updated as you progress. Future employers love seeing active, well-maintained repositories!
