# Quick Start Guide: IDP Repository Setup

## 🚀 Initial Setup

### 1. Initialize Git Repository

```bash
cd IDP-Portfolio
git init
git add .
git commit -m "Initial commit: IDP Portfolio setup with 2024 and 2026 IDPs"
```

### 2. Create GitHub Repository

1. Go to [GitHub](https://github.com) and sign in
2. Click "New repository" (green button)
3. Repository details:
   - **Name**: `IDP-Portfolio` or `professional-development`
   - **Description**: "Individual Development Plans tracking my career progression in Medical AI and Clinical Data Science"
   - **Visibility**: 
     - ✅ **Private** (recommended - contains personal career information)
     - ❌ Public (only if you want to share your journey publicly)
   - **DO NOT** initialize with README (we already have one)

4. Click "Create repository"

### 3. Connect Local Repository to GitHub

```bash
# Add remote repository
git remote add origin https://github.com/YOUR_USERNAME/IDP-Portfolio.git

# Verify remote was added
git remote -v

# Push to GitHub
git branch -M main
git push -u origin main
```

## 📝 Regular Updates

### When You Update Your IDP

```bash
# 1. Make changes to your IDP document (e.g., HASAN_IDP_2026.docx)

# 2. Check what files changed
git status

# 3. Add the changes
git add IDPs/2026/HASAN_IDP_2026.docx

# 4. Commit with a meaningful message
git commit -m "Update 2026 IDP: Added AIHC conference presentation section"

# 5. Push to GitHub
git push origin main
```

### Update CHANGELOG After Significant Events

```bash
# Edit CHANGELOG.md to add your latest achievements

git add CHANGELOG.md
git commit -m "Update CHANGELOG: Document Auto Contour system completion"
git push origin main
```

## 🗓️ Annual IDP Creation Workflow

### When Creating IDP for a New Year (e.g., 2027)

```bash
# 1. Create new year folder
mkdir -p IDPs/2027

# 2. Copy template or previous year's IDP as starting point
cp templates/UW_IDP_Guide.pdf IDPs/2027/
# OR
cp IDPs/2026/HASAN_IDP_2026.docx IDPs/2027/HASAN_IDP_2027.docx

# 3. Edit the new IDP document

# 4. Add to git
git add IDPs/2027/
git commit -m "Add IDP for 2027: Initial draft based on 2026 template"
git push origin main

# 5. Update README.md timeline section
# 6. Update CHANGELOG.md with new year entry
```

## 🎯 Before Mentor Meetings

### Prepare Discussion Points

```bash
# Create a meeting notes branch (optional)
git checkout -b meeting-prep-feb2026

# Add notes or updates
# Edit CHANGELOG.md or create meeting-notes.md in resources/

git add .
git commit -m "Prepare for Feb 2026 mentor meeting"
git push origin meeting-prep-feb2026

# After meeting, merge changes
git checkout main
git merge meeting-prep-feb2026
git push origin main
```

## 🔄 Best Practices

### Commit Message Guidelines

Good commit messages:
- ✅ "Update 2026 IDP: Add PhD application progress"
- ✅ "CHANGELOG: Document AIHC 2025 conference acceptance"
- ✅ "Add research milestone: HNCradiomics paper submission"

Poor commit messages:
- ❌ "Update"
- ❌ "Changes"
- ❌ "Stuff"

### Backup Strategy

```bash
# Create a backup tag before major changes
git tag -a v2026.1 -m "Backup before annual review"
git push origin v2026.1

# List all tags
git tag -l

# Restore from a tag if needed
git checkout v2026.1
```

### Keep It Private

```bash
# Verify repository is private on GitHub
# Go to: Settings > General > Danger Zone > Change repository visibility

# If accidentally pushed sensitive info, use:
git filter-branch --force --index-filter \
  "git rm --cached --ignore-unmatch PATH/TO/SENSITIVE/FILE" \
  --prune-empty --tag-name-filter cat -- --all

# Then force push (use with caution!)
git push origin --force --all
```

## 🆘 Common Issues

### Issue: Large file error when pushing

```bash
# If .docx files are too large (>100MB), use Git LFS
git lfs install
git lfs track "*.docx"
git add .gitattributes
git commit -m "Setup Git LFS for large Word documents"
git push origin main
```

### Issue: Merge conflicts

```bash
# If you edited IDP on multiple devices
git pull origin main
# Resolve conflicts in the file
git add <resolved-file>
git commit -m "Resolve merge conflict in IDP"
git push origin main
```

## 📊 Viewing Your History

```bash
# See all commits
git log --oneline --graph --all

# See changes in a specific file
git log --follow IDPs/2026/HASAN_IDP_2026.docx

# Compare two versions
git diff <commit-hash-1> <commit-hash-2> CHANGELOG.md

# View specific commit
git show <commit-hash>
```

## 🎓 Next Steps

1. ✅ Initialize repository and push to GitHub
2. ✅ Set repository to private
3. ✅ Update IDP before Feb 15, 2026 meeting
4. ✅ Commit and push changes regularly
5. 📅 Schedule quarterly reviews to update CHANGELOG
6. 📅 Create 2027 IDP folder before next annual review

---

**Pro Tip**: Set a reminder to commit your changes after each mentor meeting or significant achievement! This creates a rich historical record of your professional development journey.
