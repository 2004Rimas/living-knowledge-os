# Shared Utilities Package

Centralized constants, enums, utilities, and error definitions across Living Knowledge OS.

## Purpose

Provide single-source-of-truth for shared code that doesn't fit application-specific layers.

## Responsibilities

- Define application-wide constants
- Export enums for entity states and types
- Provide utility functions (formatting, validation, parsing)
- Define custom error classes and exceptions
- Export common response model shapes

## Contents

### Constants
- API endpoints
- Feature flags
- Timeout values
- Rate limits
- Default pagination sizes

### Enums
- User roles (Admin, Editor, Viewer)
- Entity status (Active, Archived, Deleted)
- Agent types
- Decision states
- Meeting states

### Utilities
- String formatting (slug, truncate, capitalize)
- Date utilities (formatting, parsing, intervals)
- Validation helpers (email, URL, etc.)
- Error handling utilities

### Errors
- `DomainError`: Base domain error
- `ValidationError`: Invalid input
- `AuthenticationError`: Auth failed
- `AuthorizationError`: Insufficient permissions
- `NotFoundError`: Resource not found
- `ConflictError`: Duplicate or conflicting resource

### Response Models
- `ApiResponse<T>`: Standard API response wrapper
- `ErrorResponse`: Error details
- `PaginatedResponse<T>`: Paginated list response

## Dependencies

- Python 3.12+ (backend)
- TypeScript 5+ (frontend)

## Future Implementation

- Internationalization (i18n) utilities
- Logging utilities
- Metrics and telemetry
