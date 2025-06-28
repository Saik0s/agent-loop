# Command: Deploy to [Environment]

Execute deployment for: $ARGUMENTS

## Pre-deployment Checklist
- [ ] All tests passing
- [ ] Build successful
- [ ] Database migrations ready
- [ ] Environment variables updated
- [ ] Monitoring alerts configured

## Deployment Steps
1. Create backup of current version
2. Run database migrations
3. Build and push Docker image
4. Update Kubernetes manifests
5. Apply rolling update
6. Verify health checks
7. Run smoke tests

## Rollback Plan
If issues detected:
```bash
# Revert to previous version
kubectl rollout undo deployment/[app-name]
# Restore database if needed
./scripts/restore-db.sh [backup-id]
```

## Post-deployment
- [ ] Verify all services healthy
- [ ] Check error rates in monitoring
- [ ] Update status page
- [ ] Notify team in Slack