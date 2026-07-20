# Identity Domain

Manages organizational structure, user authentication, access control, and session management.

## Bounded Context

Responsible for:
- Organization hierarchy
- Workspace isolation
- User authentication and profile
- Role-based access control
- API authentication and authorization
- OAuth integrations

## Aggregates

- **Organization Aggregate**: Organization root with workspaces
- **User Aggregate**: User with roles and permissions
- **Session Aggregate**: User session management
- **APIKey Aggregate**: API authentication

## Key Entities

### Organization
- **Purpose**: Top-level tenant container
- **Attributes**: ID, name, slug, tier, settings
- **Relationships**: Has many Workspaces, Users (members)
- **Rules**: Unique slug per platform

### Workspace
- **Purpose**: Isolated collaboration context within organization
- **Attributes**: ID, name, organization_id, settings, features
- **Relationships**: Belongs to Organization, Has many Projects, Users
- **Rules**: One workspace can have multiple projects

### User
- **Purpose**: Platform user with identity and roles
- **Attributes**: ID, email, name, avatar_url, preferences
- **Relationships**: Belongs to Organization, Has many Roles, Sessions
- **Rules**: Email unique per organization

### Role
- **Purpose**: Named collection of permissions
- **Attributes**: ID, workspace_id, name, description
- **Relationships**: Belongs to Workspace, Has many Permissions
- **Rules**: Built-in roles (Admin, Editor, Viewer) and custom roles

### Permission
- **Purpose**: Granular access control
- **Attributes**: ID, name, resource, action
- **Relationships**: Belongs to Role(s)
- **Rules**: Resource:action format (e.g., "document:edit")

### Session
- **Purpose**: User authentication session
- **Attributes**: ID, user_id, token_hash, expires_at
- **Relationships**: Belongs to User
- **Rules**: Expires after configured TTL

### APIKey
- **Purpose**: Machine-to-machine authentication
- **Attributes**: ID, user_id, name, key_hash, scopes
- **Relationships**: Belongs to User
- **Rules**: Can have restricted scopes and IP whitelist

### Invitation
- **Purpose**: Invite users to organization/workspace
- **Attributes**: ID, email, role, expires_at, token
- **Relationships**: Belongs to Organization/Workspace
- **Rules**: One-time use, auto-expires

## Future Extensions

- OAuth providers (Google, GitHub, Microsoft)
- SAML enterprise authentication
- Audit logging for access changes
- IP-based access control
- Two-factor authentication
