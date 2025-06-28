# Error Handling Patterns

## Principles
1. Fail fast, fail clearly
2. Never swallow errors silently
3. Log errors with context
4. Degrade gracefully

## Standard Pattern
```javascript
try {
  const result = await riskyOperation();
  return { success: true, data: result };
} catch (error) {
  logger.error('Operation failed', {
    error: error.message,
    stack: error.stack,
    context: { /* relevant data */ }
  });
  
  // User-facing error
  if (error instanceof ValidationError) {
    return { success: false, error: error.message };
  }
  
  // Generic error for unexpected cases
  return { success: false, error: 'Operation failed. Please try again.' };
}
```

## API Error Responses
- 4xx for client errors (bad input, unauthorized)
- 5xx for server errors (bugs, infrastructure)
- Always include error code and message
- Never expose internal details in production