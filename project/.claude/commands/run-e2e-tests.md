# Command: Run End-to-End Tests

Execute full E2E test suite and provide detailed results.

## Execution Steps

1. **Pre-flight checks**:
   ```bash
   # Ensure test environment is ready
   docker-compose -f docker-compose.test.yml up -d
   npm run db:seed:test
   ```

2. **Run tests**:
   ```bash
   # Playwright
   npx playwright test --project=chromium
   
   # Cypress
   npx cypress run --browser chrome
   
   # With specific tags
   npx playwright test --grep @critical
   ```

3. **Capture results**:
   - Total tests run
   - Passed/Failed/Skipped
   - Execution time
   - Failed test details

4. **For each failure**:
   - Test name and file
   - Error message
   - Stack trace snippet
   - Screenshot path (if available)
   - Video timestamp (if available)

## Output Format

```
E2E Test Results
================
Total: 45 tests
Passed: 42 (93.3%)
Failed: 3 (6.7%)
Duration: 2m 34s

FAILURES:
---------
1. authentication.spec.ts - "should logout user after timeout"
   Error: Timeout waiting for selector ".logout-message"
   Screenshot: ./test-results/auth-timeout-failure.png
   
2. checkout.spec.ts - "should process payment"
   Error: API returned 500
   Video: ./videos/checkout-failure.webm @ 1:23

3. search.spec.ts - "should filter by category"
   Error: Expected 5 items, found 0
   Screenshot: ./test-results/search-filter-failure.png

Suggested actions:
- Review authentication timeout logic
- Check payment service health
- Verify search index is updated
```

## Post-Test Actions
- [ ] Archive test artifacts
- [ ] Update test report in CI
- [ ] Create issues for failures
- [ ] Notify team if critical tests failed