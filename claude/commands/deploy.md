---
allowed-tools: []
description: "Handle deployments, releases, and rollbacks with safety checks and documentation."
---

## Context

- The user wants to deploy the application.

## Your Task

Based on the user's request, you will handle the deployment, release, or rollback of the application, ensuring all safety checks are performed and the process is documented.

## Process

1.  **Pre-deployment Checks**: Run tests, linting, and build verification.
2.  **Create Release Package**: Build and tag the release version.
3.  **Deploy to Environment**: Execute deployment scripts for the target environment.
4.  **Verify Deployment**: Check health endpoints and key functionality.
5.  **Document Release**: Update release notes and notify stakeholders.

## Examples

-   `/deploy production v2.3.1`
-   `/deploy staging latest`
-   `/deploy rollback production`

## Notes

-   **NEVER deploy without verification.** Before deploying, check that all tests are passing, review deployment checklists and procedures, verify environment configurations, and ensure a rollback plan exists.
-   Always have a rollback plan ready.
-   Document all deployments for the audit trail.
-   Monitor the application after deployment.
-   Follow environment-specific procedures.