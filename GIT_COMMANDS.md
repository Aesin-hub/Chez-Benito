# Git Commands Reference - Chez Benito

Quick reference for common Git operations in this project.

## 🚀 Initial Setup

### First Time Setup
```bash
# Configure Git (if not already done)
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Clone the repository
git clone https://github.com/Aesin-hub/chez-benito.git
cd chez-benito

# Set up remote (if you forked)
git remote add upstream https://github.com/Aesin-hub/chez-benito.git
```

## 🌿 Branch Management

### Create New Branch
```bash
# Feature branch
git checkout -b feature/feature-name

# Bugfix branch
git checkout -b bugfix/bug-description

# Hotfix branch
git checkout -b hotfix/critical-fix
```

### Switch Between Branches
```bash
# Switch to existing branch
git checkout branch-name

# Switch to main/dev
git checkout main
git checkout dev

# List all branches
git branch -a
```

### Delete Branch
```bash
# Delete local branch
git branch -d branch-name

# Force delete (if not merged)
git branch -D branch-name

# Delete remote branch
git push origin --delete branch-name
```

## 💾 Committing Changes

### Basic Workflow
```bash
# Check status
git status

# Stage specific files
git add frontend/src/components/NewComponent.jsx
git add backend/routes/newRoute.js

# Stage all changes
git add .

# Commit with message
git commit -m "Add: New feature description"

# Amend last commit (if you forgot something)
git commit --amend -m "Updated commit message"
```

### Commit Message Conventions
```bash
# Format: Type: Description

# Types:
git commit -m "Add: New supplier management feature"
git commit -m "Fix: Resolve stock calculation bug"
git commit -m "Update: Improve dashboard UI"
git commit -m "Refactor: Simplify authentication logic"
git commit -m "Docs: Update API documentation"
git commit -m "Style: Format SCSS files"
git commit -m "Test: Add unit tests for recipes"

# With issue reference
git commit -m "Fix #15: Correct ingredient stock update"
```

## 🔄 Syncing Changes

### Pull Latest Changes
```bash
# Update current branch
git pull origin branch-name

# Update from upstream (if forked)
git pull upstream main

# Pull and rebase (cleaner history)
git pull --rebase origin main
```

### Push Changes
```bash
# Push to origin
git push origin branch-name

# Force push (use with caution!)
git push -f origin branch-name

# Push and set upstream
git push -u origin branch-name
```

## 🔀 Merging & Rebasing

### Merge Changes
```bash
# Switch to target branch
git checkout main

# Merge feature branch
git merge feature/feature-name

# Abort merge (if conflicts)
git merge --abort
```

### Rebase
```bash
# Rebase current branch onto main
git rebase main

# Continue after resolving conflicts
git rebase --continue

# Abort rebase
git rebase --abort

# Interactive rebase (last 5 commits)
git rebase -i HEAD~5
```

## ⚠️ Handling Conflicts

### Resolve Merge Conflicts
```bash
# See conflicted files
git status

# After manually resolving conflicts in files
git add resolved-file.js

# Continue merge/rebase
git merge --continue
# or
git rebase --continue

# Abort merge/rebase
git merge --abort
git rebase --abort
```

## 🗑️ Undoing Changes

### Discard Local Changes
```bash
# Discard changes in specific file
git checkout -- filename.js

# Discard all local changes
git checkout .

# Remove untracked files
git clean -fd
```

### Reset Commits
```bash
# Soft reset (keep changes staged)
git reset --soft HEAD~1

# Mixed reset (keep changes unstaged)
git reset HEAD~1

# Hard reset (discard all changes)
git reset --hard HEAD~1

# Reset to specific commit
git reset --hard commit-hash
```

### Revert Commit
```bash
# Create new commit that undoes changes
git revert commit-hash

# Revert last commit
git revert HEAD
```

## 🏷️ Tags & Releases

### Create Tags
```bash
# Lightweight tag
git tag v1.0.0

# Annotated tag (recommended)
git tag -a v1.0.0 -m "Release version 1.0.0"

# Tag specific commit
git tag -a v1.0.0 commit-hash -m "Release version 1.0.0"

# List tags
git tag

# Push tags
git push origin v1.0.0
git push origin --tags
```

## 📊 Viewing History

### Log Commands
```bash
# View commit history
git log

# Compact log
git log --oneline

# Graph view
git log --graph --oneline --all

# Show changes in commits
git log -p

# Filter by author
git log --author="Lewis"

# Filter by date
git log --since="2 weeks ago"
```

### Diff Commands
```bash
# See unstaged changes
git diff

# See staged changes
git diff --staged

# Compare branches
git diff main..feature/branch-name

# Compare specific files
git diff filename.js
```

## 🔍 Inspection

### Show Information
```bash
# Show commit details
git show commit-hash

# Show file at specific commit
git show commit-hash:path/to/file.js

# Show branch information
git branch -v
git branch -vv  # with upstream info
```

### Search
```bash
# Search in commit messages
git log --grep="search-term"

# Search in code
git grep "search-term"

# Search in specific files
git log -S "search-term" -- path/to/file.js
```

## 🛠️ Maintenance

### Clean Up
```bash
# Remove deleted branches references
git remote prune origin

# Garbage collection
git gc

# Verify repository
git fsck
```

### Stash (Temporary Storage)
```bash
# Save current work
git stash

# Save with message
git stash save "Work in progress on feature X"

# List stashes
git stash list

# Apply latest stash
git stash apply

# Apply specific stash
git stash apply stash@{0}

# Apply and remove from stash
git stash pop

# Delete stash
git stash drop stash@{0}

# Clear all stashes
git stash clear
```

## 🚨 Emergency Commands

### Recover Lost Commits
```bash
# Show reference log
git reflog

# Checkout lost commit
git checkout commit-hash

# Create branch from lost commit
git checkout -b recovery-branch commit-hash
```

### Reset to Remote
```bash
# Discard all local changes and match remote
git fetch origin
git reset --hard origin/main
```

## 📋 Common Workflows

### Feature Development
```bash
# 1. Create feature branch
git checkout -b feature/new-feature

# 2. Make changes and commit
git add .
git commit -m "Add: Implement new feature"

# 3. Push to remote
git push -u origin feature/new-feature

# 4. Create Pull Request on GitHub

# 5. After merge, clean up
git checkout main
git pull origin main
git branch -d feature/new-feature
```

### Hotfix Workflow
```bash
# 1. Create hotfix from main
git checkout main
git checkout -b hotfix/critical-bug

# 2. Fix and commit
git add .
git commit -m "Fix: Critical bug description"

# 3. Push and merge immediately
git push -u origin hotfix/critical-bug
# Merge via PR or directly to main

# 4. Update dev branch
git checkout dev
git merge hotfix/critical-bug
git push origin dev
```

## 💡 Pro Tips

```bash
# Create useful aliases
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.lg "log --graph --oneline --all"

# Now you can use: git st, git co, git br, etc.
```

---

**Remember:** Always pull before pushing, commit often, and write meaningful commit messages!

For more help: `git help <command>` or visit [git-scm.com](https://git-scm.com/docs)
