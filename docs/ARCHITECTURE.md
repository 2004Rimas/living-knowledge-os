# Living Knowledge OS - Architecture Overview

## System Architecture

```
┌─────────────────────────────────────────┐
│      Frontend (Next.js 15)              │
│  React 19 + TypeScript + TailwindCSS    │
│     Clerk Authentication                │
└────────────────────┬────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────┐
│      API Gateway (FastAPI)              │
│   JWT Validation + Rate Limiting        │
│     Request/Response Logging            │
└────────────────────┬────────────────────┘
                     │
        ┌────────────┼────────────┐
        ▼            ▼            ▼
   ┌─────────┐ ┌─────────┐ ┌──────────┐
   │   SQL   │ │  Graph  │ │ Vector   │
   │(Postgres)│ │(Neo4j)  │ │(Qdrant)  │
   └─────────┘ └─────────┘ └──────────┘
        │
        ▼
   ┌──────────────────────┐
   │  Redis Cache + Queue │
   └──────────────────────┘
        │
        ▼
   ┌──────────────────────┐
   │    AI Layer          │
   │ - LangGraph          │
   │ - LangChain          │
   │ - AI Agents          │
   └──────────────────────┘
```

## Technology Stack

### Frontend
- Next.js 15 (App Router, SSR, SSG)
- React 19 (Latest features)
- TypeScript (Strict mode)
- TailwindCSS (Utility-first styling)
- shadcn/ui (Headless components)
- TanStack Query (Data fetching)
- Zod (Schema validation)
- Framer Motion (Animations)

### Backend
- FastAPI (Async Python)
- Pydantic v2 (Validation)
- SQLAlchemy (ORM)
- Alembic (Migrations)
- Celery (Task queue)
- Redis (Cache + broker)

### Databases
- PostgreSQL (Relational)
- Neo4j (Knowledge graph)
- Qdrant (Vector embeddings)
- Redis (Sessions, cache)

### AI/ML
- LangGraph (Agent orchestration)
- LangChain (LLM integration)
- OpenAI GPT-4 (Primary LLM)
- Claude 3 (Fallback/specialized)
- Sentence Transformers (Embeddings)

### Infrastructure
- Docker (Containerization)
- AWS (Cloud)
- GitHub Actions (CI/CD)
- Terraform (IaC)

## Data Models

### PostgreSQL Entities
- User, Organization, Workspace
- Project, Document, Meeting
- Decision, Timeline Event
- Chat Conversation, Permission

### Neo4j Graph
**Nodes**: Project, Person, Document, Decision, Meeting, Repository, Issue, PR
**Relationships**: created_by, discussed_in, implements, depends_on, references, assigned_to

### Qdrant Collections
- documents
- decisions
- meetings
- conversations

## API Architecture

### Versioning
- All endpoints under `/api/v1/`
- Backward compatibility
- Deprecation warnings

### Endpoint Categories
```
/api/v1/auth      - Authentication
/api/v1/projects  - Project management
/api/v1/documents - Document management
/api/v1/meetings  - Meeting intelligence
/api/v1/decisions - Decision tracking
/api/v1/chat      - AI chat
/api/v1/search    - Search
/api/v1/graph     - Knowledge graph
/api/v1/timeline  - Timeline events
/api/v1/health    - Health checks
```

## Security Architecture

### Authentication
- Clerk OAuth 2.0
- JWT tokens (access + refresh)
- Multi-factor authentication
- Session management

### Authorization
- Role-based access control (RBAC)
- Organization isolation
- Resource-level permissions
- Audit logging

### Data Protection
- Encryption at rest (AES-256)
- Encryption in transit (TLS 1.3)
- PII masking
- GDPR/HIPAA compliance

## Performance Targets

- API latency: < 200ms (p95)
- Search: < 500ms (p95)
- AI response: < 10s (p95)
- Page load: < 2s (p95)

## Monitoring & Observability

### Logging
- Structured logging (JSON)
- ELK stack aggregation
- Log levels: DEBUG, INFO, WARNING, ERROR

### Metrics
- Prometheus for metrics
- Grafana for visualization
- Key metrics: latency, throughput, errors

### Tracing
- OpenTelemetry
- Jaeger visualization
- End-to-end tracing

### Alerting
- PagerDuty integration
- Custom alert rules
- Escalation policies
