# API Design Conventions

## URL Structure
- Base URL: `/api/v1`
- Resources: Plural nouns (`/users`, `/posts`)
- Nested resources: `/users/:id/posts`
- Actions: POST to collection for non-CRUD

## HTTP Methods
- GET: Retrieve resource(s)
- POST: Create new resource
- PUT: Full update
- PATCH: Partial update
- DELETE: Remove resource

## Request/Response Format
```typescript
// Request
{
  "data": {
    // Request payload
  }
}

// Success Response (2xx)
{
  "success": true,
  "data": {
    // Response data
  },
  "meta": {
    "timestamp": "2024-01-01T00:00:00Z"
  }
}

// Error Response (4xx, 5xx)
{
  "success": false,
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "Email is required",
    "details": [
      {
        "field": "email",
        "message": "Required field missing"
      }
    ]
  }
}
```

## Status Codes
- 200: Success (GET, PUT, PATCH)
- 201: Created (POST)
- 204: No Content (DELETE)
- 400: Bad Request
- 401: Unauthorized
- 403: Forbidden
- 404: Not Found
- 422: Validation Error
- 500: Server Error

## Pagination
```
GET /api/v1/users?page=2&limit=20

Response headers:
X-Total-Count: 100
X-Page-Count: 5
Link: <...?page=3>; rel="next", <...?page=1>; rel="prev"
```

## Filtering & Sorting
```
GET /api/v1/users?role=admin&sort=-created_at
```
- Use query params for filters
- Prefix with `-` for descending sort

## Authentication
```
Authorization: Bearer <jwt-token>
```

## Versioning
- Version in URL path (`/api/v1/`)
- Breaking changes require new version
- Deprecation notices in headers for old versions