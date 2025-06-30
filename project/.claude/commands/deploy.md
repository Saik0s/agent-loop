# Command: Deploy to [Environment]

**Usage**: `/deploy [environment_name]`

## Pre-deployment Checklist
- [ ] All automated tests (unit, integration, E2E) are passing in the CI/CD pipeline.
- [ ] The build artifact has been successfully created and stored.
- [ ] All necessary database migrations have been reviewed and are ready to be applied.
- [ ] Environment-specific configuration and secrets have been updated and verified.
- [ ] Monitoring and alerting rules for the new release are in place.
- [ ] The rollback plan has been reviewed and is ready for execution if needed.

## Deployment Steps
1.  **Create Backup**: Take a snapshot or backup of the current production database and application state.
2.  **Run Migrations**: Apply any pending database migrations to the target environment.
3.  **Deploy Artifact**: Deploy the new application version using a rolling update strategy to ensure zero downtime.
    ```bash
    # Example command for a deployment script
    ./scripts/deploy.sh --environment [environment_name] --version [version_tag]
    ```
4.  **Verify Health Checks**: Monitor the application's health checks to ensure the new instances are healthy before shifting traffic.
5.  **Run Smoke Tests**: Execute a suite of automated smoke tests against the newly deployed version to verify critical functionality.

## Rollback Plan
If critical issues are detected post-deployment:
```bash
# Example command to trigger a rollback
./scripts/rollback.sh --environment [environment_name] --to-version [previous_version_tag]

# Example command to restore the database if necessary
./scripts/restore-db.sh --from-backup [backup_id]
```

## Post-deployment
- [ ] Verify that all services are healthy and operational.
- [ ] Monitor error rates, latency, and other key performance indicators (KPIs).
- [ ] Update the project's status page or notify stakeholders of the successful deployment.
- [ ] Announce the release in the team's communication channel (e.g., Slack, Teams).
