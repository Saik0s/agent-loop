Classifies raw, unstructured text (e.g., Product Requirements Documents, meeting notes, ideas) and structures it into managed, version-controlled artifacts within the project.

**Usage**: `/classify-and-structure "<raw text or path to file>"`

## Process:
1.  **Analyze Input**: Read the provided text and determine its primary nature. Is it a feature request, a technical specification, research notes, or a bug report?
    <!-- Agent Note: Use text analysis to identify keywords like "user story," "API endpoint," "bug," "research," etc. -->

2.  **Select Target Directory**: Based on the classification, choose the appropriate destination directory according to the project's file structure standards (defined in `docs/custom-instructions-for-all-modes.md`).
    *   Feature ideas -> `design/features/`
    *   Technical specs -> `design/components/`
    *   Research notes -> `research/synthesis/`
    *   Bug descriptions -> `diagnostics/issues/`

3.  **Generate Structured Document**: Convert the raw text into a standardized Markdown format. Use the appropriate template for the document type (e.g., user story format for features, issue template for bugs).
    <!-- Agent Note: Proactively use templates from `.github/ISSUE_TEMPLATE` or other project-defined structures. -->

4.  **Create File and Clean Up**:
    *   Generate a descriptive filename (e.g., `YYYY-MM-DD-feature-user-authentication.md`).
    *   Write the structured content to the new file in the target directory.
    *   If the input was a temporary file, archive or delete it to keep the project root clean.

5.  **Report Outcome**: Announce the creation of the new structured file and its location, providing a link to it.

## Examples:
- `/classify-and-structure "A user should be able to reset their password via email. The system needs an API endpoint to request a reset token and another to submit the new password."`
- `/classify-and-structure "path/to/meeting_notes.txt"`

## Notes:
- This command is the primary entry point for integrating unstructured external information into the project in a managed way.
- It ensures that all project artifacts are tracked, version-controlled, and stored in a predictable location.
- The goal is to create a single source of truth and eliminate scattered, unmanaged documents.