# Agents Service

Microservice for orchestrating autonomous agents in Living Knowledge OS.

## Purpose

Provide a pluggable, extensible framework for autonomous agents that perform specialized tasks across the platform.

## Responsibilities

- Define agent interfaces and contracts
- Orchestrate agent execution
- Manage agent state and lifecycle
- Provide agent configuration management
- Track agent performance and logs

## Agents

### Meeting Agent
- **Purpose**: Process meeting transcripts and extract insights
- **Input**: Raw meeting transcripts, audio files
- **Output**: Summarized notes, action items, decisions
- **Dependencies**: RAG service, LLM provider

### Decision Agent
- **Purpose**: Analyze and track organizational decisions
- **Input**: Decision context, options, stakeholders
- **Output**: Documented decisions, rationale, impact assessment
- **Dependencies**: Knowledge graph, audit trail

### Knowledge Agent
- **Purpose**: Build and maintain knowledge base
- **Input**: Documents, decisions, meetings
- **Output**: Indexed knowledge, semantic connections
- **Dependencies**: Vector search, graph service

### Evaluation Agent
- **Purpose**: Evaluate decision outcomes and effectiveness
- **Input**: Historical decisions, outcomes, feedback
- **Output**: Evaluation reports, recommendations
- **Dependencies**: Analytics, audit logs

### Onboarding Agent
- **Purpose**: Handle new user and team onboarding
- **Input**: User/team information, role, preferences
- **Output**: Onboarding workflow completion, welcome materials
- **Dependencies**: Email service, template engine

## Architecture

Follows these patterns:
- **Strategy Pattern**: Pluggable agent implementations
- **Command Pattern**: Agent execution requests
- **Observer Pattern**: Agent lifecycle events
- **Repository Pattern**: Agent state persistence

## Future Implementation

- Multi-agent coordination
- Agent marketplace
- Custom agent creation
- Agent performance analytics
- Prompt versioning and A/B testing
