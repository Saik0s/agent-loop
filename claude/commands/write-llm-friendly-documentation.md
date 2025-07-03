# Update Documentation

You will orchestrate the generation of LLM-optimized documentation by spawning specialized subagents for each documentation area. Each subagent will analyze code directly without reading existing documentation.

## Your Role as Orchestrator

You are the main orchestration agent. You will:

1. **Spawn specialized subagents** for each documentation file
2. **Provide context** to each subagent including source paths and analysis focus
3. **Monitor progress** and ensure all tasks complete
4. **Perform final cleanup** and consolidation

**IMPORTANT**: You should NOT read existing documentation files. All analysis should be done by subagents using mcp__zen__analyze on source code.

## Documentation Requirements

Each document MUST include:

1. **Timestamp Header** - Hidden comment with last update timestamp
2. **Brief Overview** (2-3 paragraphs max)
3. **Key Files & Examples** - Concrete file references for each major topic
4. **Common Workflows** - Practical guidance with file locations
5. **Reference Information** - Quick lookup tables with file paths

## Timestamp Format

Each generated file MUST start with:

```
<!-- Generated: YYYY-MM-DD HH:MM:SS UTC -->
```

## Documentation Subagents to Spawn

Launch these subagents in **parallel** using the Task tool. Follow the exact prompts below—each subagent works independently and reports back when done.

Task 1: "Project Overview Agent"
- Prompt: "Analyze overall project structure focusing on project purpose, key files, technology stack, and supported platforms. Run `mcp__zen__analyze` on path `.` with analysis-type `structure` to:
  • Identify main entry points
  • Map the technology stack from dependencies
  • Determine supported platforms
  Output to `docs/project-overview.md`."

Task 2: "Architecture Agent"
- Prompt: "Map system architecture focusing on component relationships, data flow, and system boundaries. Run `mcp__zen__analyze` on path `src/` with analysis-type `dependencies` to:
  • Map component interactions
  • Identify architectural patterns
  • Document data-flow paths
  Output to `docs/architecture.md`."

Task 3: "Build System Agent"
- Prompt: "Analyze build configuration focusing on build workflows, platform-specific setup, and configuration. Run `mcp__zen__analyze` on `CMakeLists.txt`, `Makefile`, and `package.json` with analysis-type `structure` to:
  • Extract build targets and dependencies
  • Document platform-specific requirements
  Output to `docs/build-system.md`."

Task 4: "Testing Agent"
- Prompt: "Analyze test structure focusing on organization, execution, and coverage. Run `mcp__zen__analyze` on `test/`, `tests/`, and `spec/` with analysis-type `structure` to:
  • Map test types and organization
  • Extract test-running commands
  Output to `docs/testing.md`."

Task 5: "Development Agent"
- Prompt: "Analyze code patterns focusing on conventions and common workflows. Run `mcp__zen__analyze` on path `src/` with analysis-type `patterns` to:
  • Identify naming conventions
  • Extract common patterns
  • Document development workflows
  Output to `docs/development.md`."

Task 6: "Deployment Agent"
- Prompt: "Analyze deployment configuration focusing on packaging, distribution, and platform deployment. Run `mcp__zen__analyze` on `scripts/`, `.github/workflows/`, and `deploy/` with analysis-type `structure` to:
  • Extract deployment workflows
  • Document distribution methods
  Output to `docs/deployment.md`."

Task 7: "Files Catalog Agent"
- Prompt: "Create a comprehensive file catalog categorizing all project files. Run `mcp__zen__analyze` on path `.` with analysis-type `structure` to:
  • Categorize files by purpose
  • Document key file locations
  • Generate a navigable file index
  Output to `docs/files.md`."

## Subagent Instructions Template

Each subagent receives:

```
You are a specialized documentation agent. Your task:

1. ANALYZE CODE ONLY - Do NOT read existing documentation
2. Use mcp__zen__analyze for all analysis:
   - mcp__zen__analyze --path <target> --analysis-type <type> --model flash
   - Types: structure, patterns, dependencies, complexity
3. Extract from analysis output:
   - File references with line numbers
   - Pattern frequencies
   - Complexity metrics
   - Dependency relationships
4. Create LLM-friendly documentation:
   - Token-efficient format
   - Concrete file references
   - Practical examples from actual code
   - Clear section organization
5. Include timestamp header:
   <!-- Generated: YYYY-MM-DD HH:MM:SS UTC -->
6. Focus on YOUR SPECIFIC AREA only
7. Write to TARGET_DOC path

Your analysis focus: [ANALYSIS_FOCUS]
Target document: [TARGET_DOC]
Source folders: [SOURCE_FOLDERS]
```

## Post-Subagent Tasks

Once the seven primary documentation agents finish, launch the following **independent follow-up tasks**. They may run in parallel—each writes a single artifact and then exits.

Task 8: "Documentation Index Agent"
- Prompt: "Read all files in `docs/` (excluding `archive/`) and generate `docs/index.md` containing:
  • A navigation tree linking every document
  • Quick links per major topic
  • A maintenance log with the current UTC timestamp."

Task 9: "README Synthesis Agent"
- Prompt: "Create a concise `README.md` in the project root. Summarize the project purpose and provide links to detailed docs in `docs/`. Use the content of newly generated docs as source material—do **not** analyze code again."

Task 10: "Claude Guidelines Agent"
- Prompt: "Update `claude.md` (or create if missing) with project-specific AI coding guidelines based on conventions detected in the new documentation set inside `docs/`. Ensure guidelines align with observed patterns and reference concrete examples by file path."

Task 11: "Documentation Cleanup Agent"
- Prompt: "Scan `docs/` for Markdown files **not** modified today. Move those to `docs/archive/` (create the folder if it doesn't exist) and log the actions in `docs/maintenance.log`. Remove duplicate or obsolete files."

## Critical Requirements

### NO EXISTING DOC READING

* Subagents must NEVER start by reading existing documentation
* All content must come from code analysis using mcp__zen__analyze
* Existing docs are only read during final cleanup phase

### PARALLEL EXECUTION

* Spawn all documentation subagents simultaneously
* Each works independently on their specific area
* No dependencies between subagents

### ANALYSIS-DRIVEN

* Every piece of documentation must reference mcp__zen__analyze output
* Include metrics, patterns, and insights from analysis
* No generic or assumed information

### FILE REFERENCE FORMAT

Always include specific references:

```
**Core System** - Implementation in src/core.h (complexity: 3.2, lines 15-45)
**Build Target** - Main executable defined in CMakeLists.txt:87-92
**Test Suite** - Unit tests in test/unit/ (15 files, 234 test cases)
```

## Orchestration Workflow

1. **Spawn all subagents** with specific contexts
2. **Wait for completion** (no specific order required)
3. **Spawn index agent** to create docs/index.md
4. **Spawn README agent** to synthesize README.md
5. **Spawn claude.md agent** to update AI guidelines
6. **Spawn cleanup agent** to remove outdated docs
7. **Verify completion** of all tasks

## Success Criteria

* All documentation generated from code analysis, not existing docs
* Each subagent completes independently
* No duplication across documentation files
* All file references verified through analysis
* Timestamp headers on all generated files
* Clean, LLM-friendly format throughout

# **Remember**: You are the orchestrator. Delegate all analysis work to subagents and ensure they use mcp__zen__analyze exclusively for code understanding.

