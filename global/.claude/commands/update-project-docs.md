Comprehensive project documentation updater that analyzes the actual codebase and updates all documentation files to reflect reality.

**Usage**: `/project:update-project-docs`

## Process:

### 1. Analyze Current Project State
- Scan all source files and configuration files
- Extract actual technologies, frameworks, and tools in use
- Identify project structure and conventions
- Review dependency files (pyproject.toml, package.json)
- Check build tools (justfile, Makefile, npm scripts)
- Examine linter/formatter configs

### 2. Verify Documentation Accuracy
Compare findings against:
- `.claude/CLAUDE.md` - Project constitution and instructions
- `README.md` - Project overview and setup
- `.claude/docs/*.md` - All documentation in .claude folder
- `docs/*.md` - Project documentation (PRD, specs)

### 3. Update Incorrect Information
For each documentation file:
- Identify outdated or incorrect information
- Replace with accurate current state
- Preserve document structure and intent
- Update commands and examples
- Fix technology references
- Correct architecture descriptions

### 4. Key Areas to Update
- **Tech Stack**: Replace incorrect framework references
- **Build Commands**: Update to actual available commands
- **Project Structure**: Reflect real directory layout
- **Dependencies**: Match actual package files
- **Development Workflow**: Document real processes
- **Architecture**: Align with implemented design

### 5. Validation
After updates:
- Ensure all commands work as documented
- Verify file paths are correct
- Test example code snippets
- Cross-reference between documents

## Examples:

### Example 1: Incorrect Tech Stack
```markdown
# Before (incorrect)
Stack: React SPA · Node/Express · PostgreSQL · Redis

# After (correct)  
Stack: React SPA · FastAPI/Python · PostgreSQL · Redis · Celery
```

### Example 2: Wrong Build Commands
```markdown
# Before (incorrect)
just install
just test

# After (correct)
pip install -e ".[dev]"  # or: uv pip install -e ".[dev]"
pytest -v
```

### Example 3: Outdated Project Description
```markdown
# Before (generic)
A streamlined, guard-railed multi-agent development playground

# After (accurate)
A financial data analysis platform that ingests and analyzes company financial data from Yahoo Finance and SEC EDGAR filings
```

## Output:
- Updated `.claude/CLAUDE.md` with correct project information
- Updated `README.md` reflecting actual implementation
- Corrected any other documentation files with wrong information
- Summary of all changes made

## Notes:
- This command should be run whenever project structure significantly changes
- Focuses on factual accuracy, not stylistic changes
- Preserves existing document organization
- Only updates incorrect information, keeps valid content
- Special attention to build commands and development workflows