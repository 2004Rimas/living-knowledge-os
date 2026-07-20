# Engineering Domain

Manages software repositories, code changes, and deployment tracking.

## Bounded Context

Responsible for:
- Repository metadata and connections
- Commit and change tracking
- Pull request management
- Issue tracking
- Release management
- Deployment tracking
- Integration with external version control systems

## Aggregates

- **Repository Aggregate**: Repository with commits and PRs
- **PullRequest Aggregate**: PR with commits and reviews
- **Issue Aggregate**: Issue tracking and linking

## Key Entities

### Repository
- **Purpose**: Connected software repository
- **Attributes**: ID, workspace_id, name, url, provider (github/gitlab)
- **Relationships**: Has many Commits, PRs, Issues, Deployments
- **Rules**: External system reference with sync metadata

### Commit
- **Purpose**: Code change record
- **Attributes**: ID, repo_id, sha, message, author, timestamp
- **Relationships**: Belongs to Repository
- **Rules**: Immutable, indexed by sha

### PullRequest
- **Purpose**: Code review and integration request
- **Attributes**: ID, repo_id, number, title, description, status
- **Relationships**: Belongs to Repository, Has Commits
- **Rules**: Status tracking from external system
- **Business Rules**: Status in (Open, Merged, Closed)

### Issue
- **Purpose**: Bug, feature, or task tracking
- **Attributes**: ID, repo_id, number, title, description, status, priority
- **Relationships**: Belongs to Repository
- **Rules**: Links to external issue system

### Release
- **Purpose**: Version release tracking
- **Attributes**: ID, repo_id, version, tag, release_date, notes
- **Relationships**: Belongs to Repository
- **Rules**: Immutable release record

### Deployment
- **Purpose**: Track release deployments
- **Attributes**: ID, repo_id, environment, version, status, timestamp
- **Relationships**: Belongs to Repository
- **Rules**: Audit trail of deployments
- **Business Rules**: Environment in (dev, staging, production)

## Future Extensions

- Real-time commit webhooks
- Code quality metrics integration
- Deployment pipeline tracking
- Release automation
- Environment promotion tracking
