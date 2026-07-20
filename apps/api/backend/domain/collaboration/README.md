# Collaboration Domain

Manages projects, documents, and team collaboration artifacts.

## Bounded Context

Responsible for:
- Project organization and hierarchy
- Document management and versioning
- Collaborative editing and comments
- Attachment and metadata storage
- Tagging and organization

## Aggregates

- **Project Aggregate**: Project with folders and documents
- **Document Aggregate**: Document with versions and comments
- **Folder Aggregate**: Folder hierarchy

## Key Entities

### Project
- **Purpose**: Top-level container for collaboration
- **Attributes**: ID, workspace_id, name, description, status
- **Relationships**: Belongs to Workspace, Has many Folders, Documents
- **Rules**: Workspace can have multiple projects
- **Business Rules**: Status in (Active, Archived, Deleted)

### Folder
- **Purpose**: Hierarchical organization of documents
- **Attributes**: ID, project_id, parent_id, name, position
- **Relationships**: Belongs to Project, Has parent Folder (optional)
- **Rules**: Tree structure, supports nesting

### Document
- **Purpose**: Primary collaborative content unit
- **Attributes**: ID, folder_id, title, content (json), status
- **Relationships**: Belongs to Folder, Has many Versions, Comments, Attachments
- **Rules**: Immutable versions, soft delete support
- **Business Rules**: Content stored as rich JSON structure

### DocumentVersion
- **Purpose**: Immutable document snapshot for audit trail
- **Attributes**: ID, document_id, version_number, content, created_by, created_at
- **Relationships**: Belongs to Document
- **Rules**: Auto-created on save, stores full content
- **Business Rules**: Version number auto-incremented

### Comment
- **Purpose**: Inline discussion on documents
- **Attributes**: ID, document_id, content, position, resolved
- **Relationships**: Belongs to Document, Has many Reactions
- **Rules**: Can be threaded, resolved/unresolved status

### Reaction
- **Purpose**: Quick feedback on comments and documents
- **Attributes**: ID, comment_id, emoji, user_id
- **Relationships**: Belongs to Comment
- **Rules**: One emoji per user per comment

### Attachment
- **Purpose**: File storage for documents
- **Attributes**: ID, document_id, filename, mime_type, size, url
- **Relationships**: Belongs to Document
- **Rules**: External storage reference

### Tag
- **Purpose**: Categorization and organization
- **Attributes**: ID, workspace_id, name, color
- **Relationships**: Many-to-many with Documents
- **Rules**: Workspace-scoped

## Future Extensions

- Real-time collaborative editing
- Document templates
- Document export (PDF, Word, Markdown)
- Approval workflows
- Document encryption
- Advanced permission controls
