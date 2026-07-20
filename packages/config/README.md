# Shared Configuration Package

Centralized configuration management for Living Knowledge OS.

## Purpose

Provide environment-agnostic configuration defaults and environment variable loading.

## Responsibilities

- Load environment-specific settings
- Define configuration schemas
- Provide feature flags
- Export database connection config
- Export service endpoints
- Manage secrets and credentials safely

## Contents

### Environment Configuration
- `NODE_ENV`: development, production, testing
- `LOG_LEVEL`: debug, info, warn, error
- `API_URL`: Backend API endpoint
- `DATABASE_URL`: PostgreSQL connection string
- `REDIS_URL`: Redis connection string
- `NEO4J_URL`: Neo4j graph database URL

### Feature Flags
- AI chat enabled
- Vector search enabled
- Graph analysis enabled
- Real-time collaboration enabled

### Service Configuration
- API port and host
- CORS origins
- JWT secret
- Session timeout
- Rate limit thresholds

## Dependencies

- python-dotenv (Python backend)
- dotenv-cli (Node.js applications)

## Future Implementation

- Dynamic feature flag management
- Configuration hot-reload
- Vault integration for secrets
- Configuration validation schemas
