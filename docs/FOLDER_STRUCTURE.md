# Folder Structure Documentation

## Root Directory

```
living-knowledge-os/
├── apps/                    # Application containers
│   ├── web/                # Next.js frontend
│   └── api/                # FastAPI backend
├── packages/               # Shared packages
│   ├── ui/                # UI components
│   ├── types/             # TypeScript types
│   ├── shared/            # Shared utilities
│   └── config/            # Configuration
├── services/              # Microservices
│   ├── rag/              # RAG pipeline
│   ├── graph/            # Graph processing
│   ├── search/           # Search service
│   └── agents/           # AI agents
├── infrastructure/        # Infrastructure
│   ├── docker/           # Docker files
│   ├── terraform/        # Terraform configs
│   └── github/           # GitHub Actions
├── docs/                 # Documentation
│   ├── architecture/     # Architecture docs
│   ├── api/              # API documentation
│   └── adr/              # Architecture Decision Records
├── tests/                # Test suite
├── scripts/              # Utility scripts
├── .github/              # GitHub config
│   └── workflows/        # CI/CD workflows
└── [config files]
```

## apps/web (Next.js Frontend)

```
apps/web/
├── app/
│   ├── (auth)/           # Auth pages (no layout)
│   ├── (app)/            # Main app pages
│   │   ├── dashboard/
│   │   ├── projects/
│   │   ├── documents/
│   │   ├── chat/
│   │   ├── search/
│   │   └── settings/
│   ├── layout.tsx        # Root layout
│   ├── page.tsx          # Home page
│   └── globals.css       # Global styles
├── components/
│   ├── ui/               # UI components from shadcn
│   ├── layout/           # Layout components
│   ├── dashboard/        # Dashboard specific
│   ├── projects/         # Project specific
│   ├── chat/             # Chat specific
│   └── common/           # Common components
├── lib/
│   ├── api.ts            # API client
│   ├── utils.ts          # Utilities
│   └── constants.ts      # Constants
├── hooks/
│   ├── useAuth.ts
│   ├── useProject.ts
│   └── useSearch.ts
├── styles/
│   └── globals.css
├── public/
│   └── [static assets]
└── [config files]
```

## apps/api (FastAPI Backend)

```
apps/api/
├── app/
│   ├── api/
│   │   └── v1/
│   │       ├── auth/
│   │       │   ├── router.py
│   │       │   ├── schemas.py
│   │       │   └── services.py
│   │       ├── projects/
│   │       ├── documents/
│   │       ├── meetings/
│   │       ├── decisions/
│   │       ├── chat/
│   │       ├── search/
│   │       ├── graph/
│   │       ├── timeline/
│   │       └── health.py
│   ├── core/
│   │   ├── config.py     # Settings
│   │   ├── security.py   # Auth
│   │   ├── exceptions.py # Exceptions
│   │   └── logging.py    # Logging
│   ├── db/
│   │   ├── models.py     # SQLAlchemy models
│   │   ├── schemas.py    # Pydantic schemas
│   │   ├── repositories/ # Data access
│   │   └── session.py    # DB session
│   ├── services/
│   │   ├── auth_service.py
│   │   ├── project_service.py
│   │   ├── document_service.py
│   │   └── [other services]
│   ├── agents/
│   │   ├── base.py
│   │   ├── meeting_agent.py
│   │   ├── decision_agent.py
│   │   └── [other agents]
│   ├── rag/
│   ├── search/
│   ├── graph/
│   ├── tasks/            # Celery tasks
│   ├── utils/
│   └── main.py           # FastAPI app
├── migrations/           # Alembic migrations
├── tests/
│   ├── unit/
│   ├── integration/
│   └── e2e/
├── requirements.txt
└── [config files]
```

## packages/

### packages/ui
```
packages/ui/
├── src/
│   ├── components/
│   │   ├── shadcn/       # shadcn components
│   │   ├── layout/
│   │   ├── forms/
│   │   └── common/
│   ├── hooks/
│   ├── utils/
│   └── index.ts
└── package.json
```

### packages/types
```
packages/types/
├── src/
│   ├── api/              # API types
│   ├── models/           # Domain models
│   ├── entities/         # Entity types
│   └── index.ts
└── package.json
```

### packages/shared
```
packages/shared/
├── src/
│   ├── constants/
│   ├── utils/
│   ├── validation/
│   └── index.ts
└── package.json
```

## services/

### services/rag
```
services/rag/
├── src/
│   ├── ingestion/
│   ├── chunking/
│   ├── embedding/
│   ├── retrieval/
│   ├── reranking/
│   └── main.py
├── requirements.txt
└── [config files]
```

### services/graph
```
services/graph/
├── src/
│   ├── schema/
│   ├── queries/
│   ├── models/
│   └── main.py
├── requirements.txt
└── [config files]
```

### services/agents
```
services/agents/
├── src/
│   ├── agents/
│   │   ├── meeting_agent.py
│   │   ├── decision_agent.py
│   │   ├── onboarding_agent.py
│   │   └── [others]
│   ├── prompts/
│   ├── tools/
│   └── main.py
├── requirements.txt
└── [config files]
```

## Infrastructure

### infrastructure/docker
```
infrastructure/docker/
├── Dockerfile.web
├── Dockerfile.api
├── docker-compose.yml
└── [docker configs]
```

### infrastructure/terraform
```
infrastructure/terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   ├── networking/
│   ├── storage/
│   ├── compute/
│   └── databases/
└── terraform.tfvars.example
```

## docs/

```
docs/
├── PROJECT_VISION.md
├── PRD.md
├── ARCHITECTURE.md
├── DEVELOPMENT_GUIDE.md
├── CODING_STANDARDS.md
├── API_DESIGN.md
├── FOLDER_STRUCTURE.md
├── architecture/
│   ├── system-context.md
│   ├── containers.md
│   └── [diagrams]
├── api/
│   └── openapi.yml
├── adr/
│   ├── 0001-tech-stack.md
│   └── [decision records]
└── guides/
    ├── onboarding.md
    └── deployment.md
```

## Purpose of Each Directory

- **apps/**: Deployable applications (web, api)
- **packages/**: Shared libraries and utilities
- **services/**: Specialized microservices
- **infrastructure/**: Deployment and infrastructure code
- **docs/**: Project documentation and guides
- **tests/**: Test suite (can be per-app or centralized)
- **scripts/**: Utility and automation scripts

## Key Files

- `README.md`: Project overview
- `LICENSE`: MIT license
- `.gitignore`: Git ignore rules
- `.editorconfig`: Editor configuration
- `.prettierrc.json`: Code formatter config
- `.eslintrc.json`: ESLint config
- `package.json`: Root dependencies and scripts
- `pnpm-workspace.yaml`: Monorepo workspace
- `turbo.json`: Turbo build config
- `docker-compose.yml`: Local development
- `Makefile`: Development commands
- `.env.example`: Environment variables template
