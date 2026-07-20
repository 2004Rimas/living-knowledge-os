# Timeline Domain

Manages event tracking, audit logs, and notifications.

## Bounded Context

Responsible for:
- System event recording
- User activity tracking
- Audit logging
- Notification management
- Event archival and cleanup

## Aggregates

- **Timeline Aggregate**: Sequence of events for an entity
- **Notification Aggregate**: User notification with delivery tracking

## Key Entities

### TimelineEvent
- **Purpose**: Single system event
- **Attributes**: ID, workspace_id, entity_type, entity_id, event_type, data
- **Relationships**: Records change to entity
- **Rules**: Immutable, chronologically ordered
- **Business Rules**: Event types: Created, Updated, Deleted, Shared, Commented

### Activity
- **Purpose**: User activity record
- **Attributes**: ID, workspace_id, user_id, action_type, resource_type, resource_id
- **Relationships**: Tracks user actions
- **Rules**: Immutable activity record

### AuditLog
- **Purpose**: Security and compliance audit trail
- **Attributes**: ID, workspace_id, user_id, action, resource_type, old_value, new_value
- **Relationships**: Immutable compliance record
- **Rules**: Cannot be modified or deleted (for compliance)
- **Business Rules**: Retention policy enforced

### Notification
- **Purpose**: User notification event
- **Attributes**: ID, user_id, type, title, message, read_at, delivered_at
- **Relationships**: References triggering event
- **Rules**: Tracks delivery and read status
- **Business Rules**: Types: Info, Warning, Error, Action_Required

## Future Extensions

- Real-time event streaming
- Event aggregation and batching
- Event replay capabilities
- Notification channels (email, Slack, in-app)
- Event retention policies
