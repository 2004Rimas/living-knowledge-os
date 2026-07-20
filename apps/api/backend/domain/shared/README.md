# Shared Domain Utilities

Cross-cutting domain concerns and utilities.

## Base Classes

### DomainEntity
Base class for all domain entities:
- UUID primary key
- Timestamps (created_at, updated_at)
- Soft delete support (deleted_at)
- Version tracking

### ValueObject
Base class for immutable value objects:
- Equality based on attributes
- Immutable after creation
- No identity

### Aggregate
Base class for aggregate roots:
- Entity identity
- Manages transactional boundaries
- Publishes domain events
- Enforces invariants

### Repository
Base repository interface:
- Add/update/delete contracts
- Query by ID
- Query specifications
- Transaction handling

### DomainEvent
Base event for domain-driven events:
- Timestamp
- Aggregate ID
- Event type
- Data payload

## Enums

### EntityStatus
- Active
- Archived
- Deleted (soft)

### RoleType
- Owner
- Admin
- Editor
- Viewer
- Custom

### PermissionAction
- Create
- Read
- Update
- Delete
- Admin

### DocumentStatus
- Draft
- Published
- Archived

### AgentStatus
- Inactive
- Active
- Running
- Error

### DecisionStatus
- Proposed
- Approved
- Rejected
- Implemented
- Archived

## Value Objects

### Email
- Validates email format
- Case-insensitive comparison

### Slug
- URL-safe identifier
- Lowercase, hyphenated
- Unique within context

### Permission
- Resource + Action
- Hierarchical resources

### Vector
- N-dimensional embedding
- Similarity calculations

## Exceptions

### DomainException
Base exception for domain errors

### ValidationException
Invalid input or state

### EntityNotFoundException
Requested entity not found

### UnauthorizedException
Insufficient permissions

### ConflictException
Conflicting state or duplicate

### RepositoryException
Data access error
