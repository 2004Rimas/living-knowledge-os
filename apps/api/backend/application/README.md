# Application Services

Use cases and orchestration layer between domain and infrastructure.

## Structure

```
identity/          - Authentication and authorization use cases
collaboration/     - Project and document use cases
knowledge/         - Knowledge graph and semantic use cases
ai/                - Agent and workflow use cases
meetings/          - Meeting and decision use cases
engineering/       - Repository integration use cases
search/            - Search and indexing use cases
timeline/          - Event and audit use cases
```

## Design Patterns

### Use Case Services
- Single responsibility per service
- Input/output DTOs for contracts
- Dependency injection for repositories
- Transaction management
- Error handling and mapping

### Command Pattern
- Command classes for write operations
- Result objects for responses
- Validation before execution

### Query Pattern
- Query classes for read operations
- Query result DTOs
- Optimized for read performance

## Cross-Cutting Concerns

### Transaction Management
- Transactional decorator for write operations
- Rollback on exceptions
- Nested transaction support

### Caching
- Result caching for frequently accessed data
- Invalidation on updates
- TTL-based expiration

### Logging
- Input/output logging
- Performance metrics
- Error details

### Authorization
- Permission checks
- Resource ownership validation
- Audit logging of sensitive operations
