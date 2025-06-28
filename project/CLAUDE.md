# 📝 Project Constitution Template

<!-- Core constitution reference -->
@.claude/docs/project_constitution.md

<!-- Always surface current project snapshot -->
@README.md

---

## 🎯 Purpose

### Project Goals
<!-- Define what this project aims to accomplish -->
**Replace with your project's specific goals:**
- [ ] Primary objective (e.g., "Build a scalable e-commerce platform")
- [ ] Secondary objectives (e.g., "Achieve 99.9% uptime", "Support 10k concurrent users")
- [ ] Success metrics (e.g., "< 200ms API response time", "Zero critical security vulnerabilities")

### Project Structure
<!-- Explain the high-level architecture and organization -->
**Current Architecture:**
```
Frontend (React) ──▶ API Gateway ──▶ Services (Auth | Products | Orders)
                         │
                         └──▶ PostgreSQL + Redis
```

**Replace with your project's structure:**
- **Frontend:** [Technology stack] - [Responsibility]
- **Backend:** [Technology stack] - [Responsibility]
- **Database:** [Technology choice] - [Data storage strategy]
- **Cache/Session:** [Technology choice] - [Caching strategy]

### Core Files
<!-- List the most important files developers should understand -->
**Essential files to understand:**
- [ ] `README.md` - Project overview and setup instructions
- [ ] `package.json` - Dependencies and scripts
- [ ] `tsconfig.json` - TypeScript configuration
- [ ] `.env.example` - Environment variables template
- [ ] `src/types/` - Core type definitions
- [ ] `src/config/` - Application configuration
- [ ] `docs/` - Technical documentation

---

## ⚡ Principles

### Core Development Principles
**Follow these principles religiously:**

**KISS (Keep It Simple, Stupid)**
- Choose the simplest solution that works
- Avoid unnecessary complexity
- Prefer readable code over clever code
- One function should do one thing well

**YAGNI (You Aren't Gonna Need It)**
- Don't build features until they're actually needed
- Remove unused code immediately
- Avoid premature optimization
- Build for current requirements, not imagined future ones

**DRY (Don't Repeat Yourself)**
- Extract common functionality into reusable functions
- Use constants for repeated values
- Create shared utilities for common operations
- But don't over-abstract - sometimes duplication is better

### Clean Code & Architecture
**Code Quality Standards:**
- **Functions:** Maximum 50 lines of code
- **Files:** Maximum 500 lines of code
- **Cyclomatic Complexity:** Maximum 10 per function
- **Single Responsibility:** Each class/function has one reason to change
- **Dependency Injection:** Prefer composition over inheritance

**Architecture Patterns:**
- **Layered Architecture:** Controller → Service → Repository
- **Stateless Services:** No server-side state (use Redis for sessions)
- **API-First:** Design APIs before implementing
- **Event-Driven:** Use events for decoupling services

### Anti-Overengineering Guidelines
**Avoid these common mistakes:**
- ❌ Creating abstractions before you have 3+ similar use cases
- ❌ Using design patterns just because you know them
- ❌ Building "flexible" systems for requirements that don't exist
- ❌ Premature performance optimization
- ✅ Start simple, refactor when complexity is justified

## 🎨 Style

### Code Style Guidelines
**Automated formatting and linting:**
- **Formatter:** Prettier (configuration in `.prettierrc`)
- **Linter:** ESLint with Airbnb-TypeScript rules
- **Pre-commit hooks:** Husky + lint-staged for automatic formatting

**Code Formatting Rules:**
```typescript
// Function naming: verbs, camelCase
function calculateTotalPrice(items: CartItem[]): number { }

// Variable naming: nouns, camelCase
const userAge = 25;
const isAuthenticated = true;

// Constants: UPPER_SNAKE_CASE
const MAX_RETRY_ATTEMPTS = 3;
const API_BASE_URL = 'https://api.example.com';
```

### TypeScript Usage
**Strict TypeScript configuration:**
```json
{
  "strict": true,
  "noImplicitAny": true,
  "strictNullChecks": true,
  "noImplicitReturns": true
}
```

**Type Definition Standards:**
```typescript
// Use interfaces for object shapes
interface User {
  id: string;
  email: string;
  createdAt: Date;
}

// Use type aliases for unions and primitives
type Status = 'pending' | 'approved' | 'rejected';
type UserId = string;

// Use enums for constants with meaning
enum UserRole {
  ADMIN = 'admin',
  USER = 'user',
  GUEST = 'guest'
}
```

**Error Handling:**
```typescript
// Use Result types for functions that can fail
type Result<T, E = Error> = { success: true; data: T } | { success: false; error: E };

// Always handle errors explicitly
const result = await fetchUser(id);
if (!result.success) {
  logger.error('Failed to fetch user', result.error);
  return;
}
```

---

## 📁 Naming

### File Structure Rules
**Directory organization:**
```
src/
├── components/     # Reusable UI components
├── pages/         # Route components
├── hooks/         # Custom React hooks
├── services/      # API calls and external services
├── utils/         # Pure utility functions
├── types/         # TypeScript type definitions
├── constants/     # Application constants
└── config/        # Configuration files
```

### Naming Conventions

**Files and Directories:**
- **Components:** PascalCase (e.g., `UserProfile.tsx`, `NavigationBar.tsx`)
- **Hooks:** camelCase with 'use' prefix (e.g., `useAuthentication.ts`)
- **Utilities:** camelCase (e.g., `formatCurrency.ts`, `validateEmail.ts`)
- **Types:** PascalCase (e.g., `User.types.ts`, `ApiResponse.types.ts`)
- **Constants:** camelCase (e.g., `apiEndpoints.ts`, `validationRules.ts`)

**API Endpoints:**
- **RESTful naming:** `/api/v1/users`, `/api/v1/orders/{id}`
- **Consistent pluralization:** Use plural nouns for collections
- **Descriptive actions:** `/api/v1/users/{id}/activate`

**🛠️ Build and Test Commands**
```bash
# Local development
npm run dev          # Start full stack in watch mode
npm test             # Run unit + integration tests
npm run e2e          # Run Playwright end-to-end tests

# Code quality
npm run typecheck    # TypeScript type checking
npm run lint         # ESLint validation
npm run format       # Prettier formatting
```

**🔒 Security Requirements**
- **Authentication:** JWT tokens with proper expiration
- **Authorization:** Role-based access control (RBAC)
- **Data Validation:** Validate all inputs server-side
- **Environment Variables:** Never commit secrets to version control

**🚀 Deployment Process**
1. **Code freeze** on release branch
2. **Version bump:** `npm version <patch|minor|major>`
3. **Update:** `CHANGELOG.md` with release notes
4. **Deploy:** Use `/project:release` command
5. **Monitor:** Check rollback script availability

**📊 Performance Standards**
- **API Response Time:** < 200ms for 95th percentile
- **Database Queries:** < 100ms average
- **Bundle Size:** < 500KB initial load
- **Lighthouse Score:** > 90 for Performance, Accessibility, SEO

**🔄 Definition of Done**
Every task must include:
- [ ] Code implementation
- [ ] Unit tests (≥ 80% coverage)
- [ ] Integration tests for APIs
- [ ] Documentation updates
- [ ] Code review approval
- [ ] All CI/CD checks passing

**🚨 High-Priority Rules**
1. **Never break existing functionality** - run full test suite before merging
2. **Security first** - validate all inputs, sanitize outputs
3. **Performance matters** - monitor bundle size and API response times
4. **Documentation is code** - keep docs in sync with implementation
5. **PR size limit** - Maximum 400 lines of code per pull request
