# Search Domain

Manages search indexing, query history, and search analytics.

## Bounded Context

Responsible for:
- Search query tracking
- Search index management
- Search result ranking and deduplication
- User search patterns
- Search analytics

## Aggregates

- **SearchQuery Aggregate**: Query with execution and results

## Key Entities

### SearchQuery
- **Purpose**: User search execution record
- **Attributes**: ID, workspace_id, user_id, query_text, filters, timestamp
- **Relationships**: Has SearchResults, tracked in SearchHistory
- **Rules**: Immutable query record

### SearchHistory
- **Purpose**: Aggregate of user searches over time
- **Attributes**: ID, workspace_id, user_id, search_count, common_terms
- **Relationships**: References SearchQueries
- **Rules**: Materialized view for analytics

### SearchIndex
- **Purpose**: Metadata for indexed searchable content
- **Attributes**: ID, workspace_id, entity_type, entity_id, status
- **Relationships**: References indexed entities
- **Rules**: Maintains sync status with source

### SearchResult
- **Purpose**: Single result from search execution
- **Attributes**: ID, query_id, entity_type, entity_id, rank, score
- **Relationships**: Belongs to SearchQuery
- **Rules**: Tracks result order and relevance score

## Future Extensions

- Full-text search indexing
- Vector similarity search
- Graph-based search
- Personalized search ranking
- Search suggestions and autocomplete
- Search analytics dashboard
