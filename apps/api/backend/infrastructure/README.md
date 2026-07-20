# Infrastructure Layer

External service adapters, database implementations, and technical details.

## Structure

```
database/          - SQLAlchemy models and migrations
vector_store/      - Vector database integration (Qdrant, Pinecone)
graph_db/          - Neo4j integration
search/            - Full-text search (Elasticsearch)
event_bus/         - Event publishing and subscription
email/             - Email service integration
storage/           - File storage (S3, etc.)
messaging/         - Message queue (Redis, RabbitMQ)
auth/              - Authentication providers
llm/               - LLM provider integrations
logging/           - Structured logging
exception_handlers/ - Infrastructure exception mapping
```

## Design Patterns

### Adapter Pattern
- Database adapter implementing repository interfaces
- External service adapters
- Provider-agnostic interfaces

### Factory Pattern
- Database session factories
- Connection pool management
- Configuration-based instantiation

### Dependency Injection
- Service container configuration
- Constructor injection
- Interface-based dependencies

## Database Strategy

### PostgreSQL
- Primary relational data
- ACID transactions
- Full-text search capabilities
- pgvector for embeddings

### Neo4j
- Knowledge graphs
- Relationship queries
- Pattern matching

### Qdrant/Pinecone
- Vector similarity search
- High-dimensional embeddings
- Filtering metadata

### Redis
- Caching layer
- Session storage
- Message queue

## Future Enhancements

- Kafka for event streaming
- S3 for file storage
- CloudFront for CDN
- Monitoring and tracing
- Service mesh integration
