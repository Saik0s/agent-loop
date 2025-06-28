# Command: Prepare Release

Prepare release for version: $ARGUMENTS

## Release Checklist
1. **Code Freeze**
   - Merge all approved PRs
   - No new features after this point

2. **Version Bump**
   - Update version in package.json
   - Update CHANGELOG.md
   - Update documentation versions

3. **Final Testing**
   - Run full test suite
   - Perform manual smoke tests
   - Security scan

4. **Tag Release**
   ```bash
   git tag -a v$VERSION -m "Release v$VERSION"
   git push origin v$VERSION
   ```

5. **Deploy to Production**
   - Follow deployment runbook
   - Monitor for issues

6. **Post-Release**
   - Update release notes
   - Notify stakeholders
   - Plan retrospective