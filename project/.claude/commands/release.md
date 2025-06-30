# Command: Prepare Release

**Usage**: `/release <version_number>`

## Release Checklist
1.  **Code Freeze**:
    -   Merge all approved pull requests for the release into the main branch.
    -   Announce a code freeze; no new features will be merged until the release is complete.

2.  **Version Bump**:
    -   Update the application version in all relevant files (e.g., `package.json`, `pom.xml`, `_version.py`).
    -   Update the `CHANGELOG.md` with a summary of changes for the new version.
    -   Update any version numbers in the documentation.

3.  **Final Testing**:
    -   Run the complete test suite (unit, integration, E2E) against the release candidate.
    -   Perform manual smoke tests on a staging environment that mirrors production.
    -   Run a final security scan on the release artifact.

4.  **Tag Release**:
    -   Create a version tag in the Git repository.
    ```bash
    git tag -a v[VERSION] -m "Release v[VERSION]"
    git push origin v[VERSION]
    ```

5.  **Deploy to Production**:
    -   Follow the standard deployment process using the `/deploy` command or the established runbook.
    -   Monitor the deployment closely for any issues.

6.  **Post-Release Communication**:
    -   Publish the official release notes.
    -   Notify stakeholders and the wider team about the new release.
    -   Schedule a retrospective to discuss what went well and what could be improved.
