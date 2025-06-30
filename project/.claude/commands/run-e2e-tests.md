# Command: Run End-to-End (E2E) Tests

**Usage**: `/run-e2e-tests [options]`

## Execution Steps

1.  **Pre-flight Checks**:
    -   Ensure the test environment is clean and properly configured.
    -   Start all necessary services (e.g., application server, database, message queue).
    -   Seed the database with the required test data.
    ```bash
    # Example pre-flight script
    ./scripts/setup-e2e-env.sh
    ```

2.  **Run Tests**:
    -   Execute the E2E test suite using the configured test runner.
    ```bash
    # Example for a generic test runner
    [test_runner] run --spec "tests/e2e/**/*.spec.js"
    
    # Example with specific tags
    [test_runner] run --tags "@critical and not @flaky"
    ```

3.  **Capture Results**:
    -   Collect key metrics: total tests run, passed, failed, and skipped.
    -   Record the total execution time.
    -   Capture detailed information for each failed test.

4.  **Report Failures**:
    -   For each failure, provide:
        -   Test name and file path.
        -   A clear error message and stack trace.
        -   Path to any generated artifacts (e.g., screenshots, videos).

## Output Format

```
E2E Test Suite Results
======================
Total Tests: [Number]
Passed: [Number] ([Percentage]%)
Failed: [Number] ([Percentage]%)
Skipped: [Number]
Duration: [Time]

FAILURES:
---------
1. [Test Suite Name] - "[Test Case Name]"
   - **Error**: [Error message from the test runner]
   - **Location**: [File path]:[Line number]
   - **Artifacts**:
     - Screenshot: [Path to screenshot]
     - Video: [Path to video]

[... more failures ...]

Suggested Actions:
- Review the logs and artifacts for the failed tests.
- Create bug reports or issues for each reproducible failure.
- Check the health of the test environment and dependent services.
```

## Post-Test Actions
- [ ] Archive all test artifacts (logs, screenshots, videos) in a CI/CD system.
- [ ] Publish a test report to a shared location.
- [ ] Automatically create issues in the project's issue tracker for new failures.
- [ ] Notify the development team of any critical failures via a dedicated channel.
