# Command: Setup Development Environment

## Prerequisites
- Node.js 18+
- PostgreSQL 14+
- Redis 6+
- Docker Desktop

## Setup Steps
1. Clone repository
2. Copy environment file: `cp .env.example .env`
3. Install dependencies: `npm install`
4. Start services: `docker-compose up -d`
5. Run migrations: `npm run db:migrate`
6. Seed data: `npm run db:seed`
7. Start dev server: `npm run dev`

## Verify Setup
- API health check: http://localhost:3000/health
- Frontend: http://localhost:3001
- Run tests: `npm test`

## Common Issues
- Port conflicts: Check if 3000/3001 are in use
- Database connection: Verify PostgreSQL is running
- Redis connection: Check Redis is accessible