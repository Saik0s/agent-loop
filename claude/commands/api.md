---
allowed-tools: []
description: "Create and test API endpoints quickly with proper structure and documentation."
---

## Context

- The user wants to create or test an API endpoint.

## Your Task

Based on the user's request, you will create or test an API endpoint, ensuring it has a proper structure and documentation.

## Process

1.  **Design Endpoint**: Define path, method, request/response structure.
2.  **Implement Handler**: Create the endpoint logic with validation.
3.  **Add Tests**: Write unit and integration tests.
4.  **Document API**: Create OpenAPI/Swagger documentation.
5.  **Test Manually**: Verify with actual HTTP requests.

## Examples

-   `/api create /users GET`
-   `/api create /auth/login POST`
-   `/api test /products`
-   `/api document /api/v2`

## Notes

-   **NEVER create APIs without examples.** Before creating, search for existing API patterns in the project, check API design guidelines and standards, use Context7 to understand framework patterns, and find similar endpoints for consistency.
-   Follow RESTful conventions.
-   Include proper error handling.
-   Validate all inputs.
-   Version APIs appropriately.