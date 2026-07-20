# Living Knowledge OS - Development Guide

## Getting Started

### Prerequisites
- Node.js 20+
- Python 3.11+
- Docker & Docker Compose
- PostgreSQL client tools

### Local Setup

1. **Clone and install**
   ```bash
   git clone https://github.com/2004Rimas/living-knowledge-os.git
   cd living-knowledge-os
   pnpm install
   ```

2. **Start Docker services**
   ```bash
   docker-compose up -d
   ```

3. **Setup backend**
   ```bash
   cd apps/api
   pip install -r requirements.txt
   alembic upgrade head
   ```

4. **Start dev servers**
   ```bash
   # Terminal 1
   cd apps/web && pnpm dev

   # Terminal 2
   cd apps/api && python -m uvicorn app.main:app --reload
   ```

## Project Structure

See FOLDER_STRUCTURE.md for detailed overview.

## Development Workflow

1. Create feature branch: `git checkout -b feat/feature-name`
2. Write code following coding standards
3. Write tests (80%+ coverage required)
4. Run linters: `pnpm lint`
5. Commit with conventional commits: `git commit -m "feat: description"`
6. Push and create PR
7. Wait for CI/CD and reviews
8. Merge after approval

## Code Standards

See CODING_STANDARDS.md for detailed guidelines.

### TypeScript
- Strict mode
- No `any` types
- Proper error handling
- JSDoc comments

### Python
- Type hints required
- Pydantic validation
- Async/await patterns
- Docstrings required

## Testing

- Unit tests: 80% minimum coverage
- Integration tests: Critical paths
- E2E tests: User workflows
- Run with: `pnpm test`

## Git Workflow

### Branch Strategy
- `main`: Production-ready
- `develop`: Integration
- `feat/*`: Features
- `fix/*`: Bug fixes
- `docs/*`: Documentation

### Commit Convention
- feat: New feature
- fix: Bug fix
- docs: Documentation
- style: Code style
- refactor: Code refactor
- test: Tests
- chore: Maintenance

## Debugging

### Frontend
- VS Code debugger
- React DevTools extension
- Network tab
- Console logging

### Backend
- Python debugger (pdb)
- FastAPI Swagger UI (/docs)
- Application logs
- Database query logging

## Performance

### Frontend
- Code splitting
- Image optimization
- Lazy loading
- Bundle monitoring

### Backend
- Query optimization
- Caching
- Async operations
- Connection pooling

## Documentation

- Docstrings on all public functions
- Inline comments for complex logic
- Architecture Decision Records (ADRs)
- README in each major directory
- Update docs with code changes
