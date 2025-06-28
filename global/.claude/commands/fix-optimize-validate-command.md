Analyzes, fixes layout, and optimizes Claude custom command files using the Enhanced Chain of Harmonized Optimization (ECHO) method.

**Usage**: `/fix-optimize-validate-command <command-file-path>`

## Process:

### 1. Command File Analysis
- Read the specified command file
- Parse current structure and content
- Identify missing or improperly formatted sections
- Detect layout deviations from standard template

### 2. Layout Validation and Fixing
Ensure command follows standard structure:
- **Title**: One-sentence summary at the top
- **Usage**: Command invocation syntax
- **Process**: Step-by-step instructions
- **Examples**: Concrete usage examples (optional)
- **Notes**: Important considerations (optional)

Fix any structural issues:
- Reorder sections to match template
- Add missing required sections
- Format section headers consistently
- Ensure proper markdown syntax

### 3. Content Optimization Using ECHO Method

#### Phase 1: Prompt Analysis and Evaluation
- Analyze command's key concepts, objectives, and constraints
- Identify command type (planning/implementation/analysis/etc)
- Evaluate strengths and weaknesses
- Assess complexity and requirements

#### Phase 2: Prompt Expansion and Exploration
- Generate 8-10 alternative versions exploring different aspects
- Cover various perspectives and interpretations
- Apply role prompting, emotion prompting, style prompting
- Incorporate chain-of-thought reasoning

#### Phase 3: Prompt Clustering and Thematic Analysis
- Group prompts into 5-7 thematic clusters
- Identify core themes and unique aspects
- Apply Tree of Thoughts for enhancement paths

#### Phase 4: Demonstration and Approach Outline
- Outline interpretation approaches for each cluster
- Include reasoning steps and focus areas
- Apply few-shot and least-to-most prompting
- Focus on approach rather than responses

#### Phase 5: Prompt Refinement and Optimization
- Identify strengths/weaknesses of each version
- Address misinterpretations and improve clarity
- Maintain original intent while enhancing specificity
- Apply linguistic optimization techniques

#### Phase 6: Cross-Pollination and Synthesis
- Identify effective elements across versions
- Integrate to create synthesized improvements
- Apply mixture of reasoning experts (MoRE)

#### Phase 7: Final Prompt Synthesis
- Combine most effective elements
- Construct comprehensive improved command
- Ensure detailed, clear instructions
- Include specific guidance and structure

#### Phase 8: Meta-Learning Integration
- Add adaptive technique selection
- Include self-evaluation guidelines
- Build in iterative improvement capability

### 4. Validation and Output
- Verify all required sections are present
- Ensure consistent formatting
- Check command clarity and completeness
- Output the optimized command file

## Examples:

### Example 1: Basic Layout Fix
```bash
/fix-optimize-validate-command ~/.claude/commands/my-broken-command.md
```
Fixes structural issues and reorders sections to match template.

### Example 2: Full Optimization
```bash
/fix-optimize-validate-command ./project/.claude/commands/feature-builder.md
```
Performs complete ECHO optimization on an existing command.

### Example 3: Validation Only
```bash
/fix-optimize-validate-command ~/commands/analyze-code.md --validate-only
```
Checks layout compliance without modifications.

## Notes:

- Always preserves original command intent
- Backs up original file before modifications
- Applies ECHO method systematically for optimal results
- Focuses on clarity, actionability, and completeness
- Ensures commands follow Claude best practices
- Maintains consistency with existing command patterns