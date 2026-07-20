# API Design Guide

## Versioning

All endpoints under `/api/v1/`
- Backward compatibility maintained
- Deprecation warnings for changes

## Response Format

### Success Response
```json
{
  "success": true,
  "data": { ... },
  "meta": {
    "timestamp": "2024-01-01T00:00:00Z",
    "request_id": "req_123456"
  }
}
```

### Error Response
```json
{
  "success": false,
  "error": {
    "code": "RESOURCE_NOT_FOUND",
    "message": "Project not found",
    "details": {}
  },
  "meta": {
    "timestamp": "2024-01-01T00:00:00Z",
    "request_id": "req_123456"
  }
}
```

## Error Codes

- `INVALID_REQUEST`: Validation failed
- `UNAUTHORIZED`: Authentication required
- `FORBIDDEN`: Authorization failed
- `RESOURCE_NOT_FOUND`: Resource doesn't exist
- `RESOURCE_CONFLICT`: Resource already exists
- `RATE_LIMITED`: Too many requests
- `INTERNAL_ERROR`: Server error

## Pagination

```
GET /api/v1/projects?page=1&limit=20&sort=-created_at
```

Response includes:
```json
{
  "data": [...],
  "pagination": {
    "total": 100,
    "page": 1,
    "limit": 20,
    "pages": 5
  }
}
```

## Authentication

All endpoints (except auth) require JWT token:
```
Authorization: Bearer <token>
```

## Rate Limiting

API rate limits:
- 100 requests per minute (authenticated)
- 10 requests per minute (unauthenticated)

Headers:
```
X-RateLimit-Limit: 100
X-RateLimit-Remaining: 95
X-RateLimit-Reset: 1234567890
```

## Endpoint Categories

### Authentication
- `POST /api/v1/auth/signin`
- `POST /api/v1/auth/signup`
- `POST /api/v1/auth/logout`
- `POST /api/v1/auth/refresh`
- `GET /api/v1/auth/me`

### Projects
- `GET /api/v1/projects`
- `POST /api/v1/projects`
- `GET /api/v1/projects/{id}`
- `PATCH /api/v1/projects/{id}`
- `DELETE /api/v1/projects/{id}`

### Documents
- `GET /api/v1/documents`
- `POST /api/v1/documents`
- `GET /api/v1/documents/{id}`
- `PATCH /api/v1/documents/{id}`
- `DELETE /api/v1/documents/{id}`

### Meetings
- `GET /api/v1/meetings`
- `POST /api/v1/meetings`
- `GET /api/v1/meetings/{id}`
- `POST /api/v1/meetings/{id}/upload-transcript`

### Decisions
- `GET /api/v1/decisions`
- `POST /api/v1/decisions`
- `GET /api/v1/decisions/{id}`
- `PATCH /api/v1/decisions/{id}`

### Chat
- `POST /api/v1/chat/message`
- `GET /api/v1/chat/history`

### Search
- `GET /api/v1/search`
- `GET /api/v1/search/semantic`

### Knowledge Graph
- `GET /api/v1/graph/nodes`
- `POST /api/v1/graph/nodes`
- `GET /api/v1/graph/relationships`
- `POST /api/v1/graph/relationships`

### Timeline
- `GET /api/v1/timeline/events`
- `GET /api/v1/timeline/events?filter=decisions`

### Health
- `GET /api/v1/health`
