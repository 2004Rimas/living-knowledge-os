# TypeScript Types Package

Centralized TypeScript type definitions and interfaces for Living Knowledge OS.

## Purpose

Ensure consistent type safety and contract definitions across all TypeScript applications.

## Responsibilities

- Define entity interfaces (Organization, User, Project, etc.)
- Export domain model types
- Define API request/response types
- Export generic utility types
- Provide type guards and validators

## Contents

### Domain Types
- `User`, `Organization`, `Workspace`
- `Project`, `Repository`, `Document`
- `Meeting`, `Decision`, `Task`
- `Agent`, `AgentExecution`
- `KnowledgeNode`, `VectorDocument`

### API Types
- Request payloads
- Response enums
- Filter and sort parameters
- Pagination metadata

### Utility Types
- `ApiResponse<T>`
- `Paginated<T>`
- `Nullable<T>`
- `DeepPartial<T>`

## Dependencies

- TypeScript 5.0+

## Future Implementation

- Runtime type validation with Zod
- Type-safe API client generation
- JSON schema generation
