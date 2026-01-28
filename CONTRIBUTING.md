# Contributing to Chez Benito

First off, thank you for considering contributing to Chez Benito! 

This is primarily a personal portfolio project, but suggestions, bug reports, and feedback are always welcome.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Development Setup](#development-setup)
- [Pull Request Process](#pull-request-process)
- [Coding Standards](#coding-standards)

## 📜 Code of Conduct

This project adheres to a simple code of conduct:
- Be respectful and constructive
- Welcome newcomers and help them learn
- Focus on what is best for the project
- Show empathy towards other contributors

## 🤝 How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates.

When creating a bug report, include:
- **Clear title and description**
- **Steps to reproduce** the behavior
- **Expected behavior** vs actual behavior
- **Screenshots** if applicable
- **Environment details** (OS, Node version, browser)

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion, include:
- **Clear use case** - why is this enhancement useful?
- **Detailed description** of the proposed functionality
- **Possible implementation** if you have ideas

### Pull Requests

1. Fork the repo and create your branch from `dev`
2. Follow the coding standards (see below)
3. Test your changes thoroughly
4. Update documentation if needed
5. Write clear commit messages
6. Submit your pull request!

## 🛠️ Development Setup

See the [README.md](./README.md#getting-started) for detailed setup instructions.

Quick start:
```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/chez-benito.git
cd chez-benito

# Install dependencies
cd backend && npm install
cd ../frontend && npm install

# Create .env files (see .env.example)
# Start development servers
```

## 🔀 Pull Request Process

1. **Branch naming:**
   - Features: `feature/feature-name`
   - Bugfixes: `bugfix/bug-description`
   - Hotfixes: `hotfix/issue-description`

2. **Commit messages:**
   - Use present tense ("Add feature" not "Added feature")
   - Use imperative mood ("Move cursor to..." not "Moves cursor to...")
   - Reference issues: "Fix #123: Description"

3. **PR description should include:**
   - What changes were made and why
   - Screenshots for UI changes
   - Testing instructions

4. **Before submitting:**
   - Update documentation
   - Test on multiple breakpoints (responsive)
   - Run linter and fix issues
   - Ensure no console errors

## 💻 Coding Standards

### JavaScript/React
- Use ES6+ syntax
- Functional components with hooks
- PropTypes for component props
- Meaningful variable and function names
- Comments for complex logic
- Avoid deeply nested code

### SCSS
- Follow BEM methodology
- Use variables for colors, spacing, fonts
- Mobile-first approach
- Organize files following 7-1 architecture

### Backend
- RESTful API conventions
- Error handling with try/catch
- Input validation on all routes
- Consistent response format
- Meaningful HTTP status codes

### General
- Keep functions small and focused
- DRY (Don't Repeat Yourself)
- KISS (Keep It Simple, Stupid)
- Write self-documenting code

## 🧪 Testing

Before submitting a PR:
- Test all CRUD operations
- Test on different screen sizes
- Test with different user roles (Chef/Employee)
- Check browser console for errors
- Verify API responses with Postman

## 📝 Documentation

- Update README.md if you change functionality
- Add JSDoc comments to complex functions
- Update API documentation for new endpoints
- Create examples for new features

## ❓ Questions?

Feel free to open an issue with the "question" label, or reach out via:
- GitHub: [@Aesin-hub](https://github.com/Aesin-hub)
- LinkedIn: [Lewis Bock](https://www.linkedin.com/in/lewis-bock-055051177/)

## 🌟 Recognition

Contributors will be acknowledged in the project README!

---

Thank you for contributing to Chez Benito! 🌮
