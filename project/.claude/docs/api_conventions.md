# API Design Conventions

## URL Structure
- **Base URL**: `/api/v[version_number]` (e.g., `/api/v1`)
- **Resources**: Use plural nouns (e.g., `/users`, `/orders`).
- **Nested Resources**: For relationships, nest resources (e.g., `/users/:id/orders`).
- **Actions**: Use verbs for non-CRUD operations (e.g., `/posts/:id/publish`).

## HTTP Methods
- **GET**: Retrieve one or more resources.
- **POST**: Create a new resource.
- **PUT**: Replace an existing resource entirely.
- **PATCH**: Partially update an existing resource.
- **DELETE**: Remove a resource.

## Request/Response Format
- Use JSON for all requests and responses.
- Standardize success and error payloads.

**Success Response (2xx):**
```json
{
  "success": true,
  "data": {
    // Response data (object or array)
  },
  "meta": {
    "timestamp": "YYYY-MM-DDTHH:mm:ssZ"
  }
}
```

**Error Response (4xx, 5xx):**
```json
{
  "success": false,
  "error": {
    "code": "ERROR_CODE",
    "message": "A human-readable error message.",
    "details": [
      {
        "field": "field_name",
        "message": "Specific validation error message."
      }
    ]
  }
}
```

## Status Codes
- **200 OK**: Successful request (GET, PUT, PATCH).
- **201 Created**: Resource created successfully (POST).
- **204 No Content**: Request successful, no data to return (DELETE).
- **400 Bad Request**: Invalid syntax in the request.
- **401 Unauthorized**: Authentication is required and has failed.
- **403 Forbidden**: The server understands the request but refuses to authorize it.
- **404 Not Found**: The requested resource could not be found.
- **422 Unprocessable Entity**: The request was well-formed but contains semantic errors (e.g., validation failed).
- **500 Internal Server Error**: A generic server error occurred.

## Pagination
- Use query parameters for pagination (e.g., `page` and `limit`).
- Include pagination details in the response headers or a `meta` object.

**Example Request:**
`GET /api/v1/items?page=2&limit=50`

**Example Response Headers:**
```
X-Total-Count: 1250
X-Page-Count: 25
Link: <.../?page=3>; rel="next", <.../?page=1>; rel="prev"
```

## Filtering & Sorting
- Use query parameters for filtering and sorting.
- Support multiple values and ranges where applicable.
- Use a consistent naming convention (e.g., `sort_by`, `order`).

**Example Request:**
`GET /api/v1/products?status=available&sort_by=-created_at`

## Authentication
- Use a standard authentication scheme, such as OAuth 2.0 or JWT.
- Pass tokens in the `Authorization` header.

**Example Header:**
`Authorization: Bearer <your-jwt-token>`

## Versioning
- Include the version number in the URL path (e.g., `/api/v1/`).
- Document breaking changes clearly and provide a deprecation path for older versions.
