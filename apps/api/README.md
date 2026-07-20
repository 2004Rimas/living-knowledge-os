# Living Knowledge OS - API Server

High-performance FastAPI backend serving the Living Knowledge OS application.

## Architecture

- **Framework**: FastAPI
- **Language**: Python 3.12+
- **Database**: PostgreSQL with SQLAlchemy ORM
- **Async**: Full async/await support
- **Validation**: Pydantic v2
- **API Documentation**: Auto-generated OpenAPI/Swagger

## Directory Structure

```
api/              - API endpoints and routers
core/             - Core application logic and exceptions
config/           - Configuration management and environment loading
models/           - SQLAlchemy database models
schemas/          - Pydantic request/response schemas
services/         - Business logic layer (Domain-driven)
repositories/     - Data access layer (Repository pattern)
dependencies/     - Dependency injection and common dependencies
middleware/       - Custom middleware (CORS, logging, etc.)
routers/          - API route groups and endpoint definitions
database/         - Database connection and session management
migrations/       - Alembic database migration scripts
utils/            - Utility functions and helpers
```

## Purpose

Central backend service providing:
- RESTful API endpoints for all frontend operations
- Database operations and persistence
- Business logic orchestration
- Authentication and authorization
- Data validation and transformation
- Integration with external services

## Responsibilities

- Define and manage API contracts
- Persist and retrieve data from PostgreSQL
- Execute business domain logic
- Manage database migrations
- Handle cross-cutting concerns (logging, error handling)
- Provide dependency injection
- Validate all inputs using Pydantic

## Dependencies

- FastAPI 0.100+
- SQLAlchemy 2.0+
- Pydantic 2.0+
- Alembic for migrations
- psycopg2-binary for PostgreSQL
- python-dotenv for configuration

## Future Implementation

- Task queuing (Celery/RQ)
- Caching layer (Redis)
- WebSocket support
- GraphQL endpoint
- Advanced rate limiting
- Service-to-service authentication
