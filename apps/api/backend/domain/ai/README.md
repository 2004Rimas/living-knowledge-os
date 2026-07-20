# AI Domain

Manages AI agents, workflows, and autonomous intelligence capabilities.

## Bounded Context

Responsible for:
- Agent definition and orchestration
- Workflow execution and management
- Prompt template management
- Tool invocation and chaining
- Agent evaluation and feedback
- Conversation management

## Aggregates

- **Agent Aggregate**: Agent with configuration and runs
- **Workflow Aggregate**: Workflow with steps and execution history
- **Conversation Aggregate**: Multi-turn dialogue

## Key Entities

### Agent
- **Purpose**: Autonomous entity performing specialized tasks
- **Attributes**: ID, workspace_id, name, description, type, config
- **Relationships**: Has many AgentRuns, Tools, PromptTemplates
- **Rules**: Versioned configuration, enable/disable toggle
- **Business Rules**: Types: Meeting, Decision, Knowledge, Evaluation, Onboarding, Custom

### AgentRun
- **Purpose**: Single execution of an agent
- **Attributes**: ID, agent_id, trigger_id, status, input, output, metadata
- **Relationships**: Belongs to Agent, Traces to source entity
- **Rules**: Immutable execution record, full audit trail
- **Business Rules**: Status in (Pending, Running, Success, Failed, Cancelled)

### PromptTemplate
- **Purpose**: Reusable prompt patterns for LLM calls
- **Attributes**: ID, agent_id, name, template, variables, version
- **Relationships**: Belongs to Agent, Has many Evaluations
- **Rules**: Version-controlled, supports templating

### Tool
- **Purpose**: External capability invocation
- **Attributes**: ID, agent_id, name, description, spec (json)
- **Relationships**: Used by Agent
- **Rules**: Defines interface for agent invocation

### Workflow
- **Purpose**: Multi-step process orchestration
- **Attributes**: ID, workspace_id, name, definition (json), status
- **Relationships**: Has many WorkflowSteps, WorkflowExecutions
- **Rules**: DAG structure, version-controlled

### WorkflowStep
- **Purpose**: Single step in workflow
- **Attributes**: ID, workflow_id, step_index, action_type, config, dependencies
- **Relationships**: Belongs to Workflow
- **Rules**: Can depend on other steps

### Evaluation
- **Purpose**: Quality assessment of AI outputs
- **Attributes**: ID, run_id, metric_type, score, feedback
- **Relationships**: Belongs to AgentRun
- **Rules**: Manual and automatic evaluation

### Feedback
- **Purpose**: User feedback on agent outputs
- **Attributes**: ID, run_id, rating, comment, tags
- **Relationships**: Belongs to AgentRun
- **Rules**: Used for training and improvement

### ModelProvider
- **Purpose**: Configuration for LLM providers
- **Attributes**: ID, workspace_id, provider_type, config, api_key_ref
- **Relationships**: Used by Agents
- **Rules**: Workspace-scoped, credential management
- **Business Rules**: Providers: OpenAI, Anthropic, Local, Custom

### Conversation
- **Purpose**: Multi-turn dialogue context
- **Attributes**: ID, workspace_id, user_id, agent_id, status, context
- **Relationships**: Has many Messages
- **Rules**: Maintains state across turns

### Message
- **Purpose**: Single message in conversation
- **Attributes**: ID, conversation_id, role, content, tokens, timestamp
- **Relationships**: Belongs to Conversation
- **Rules**: Immutable, tracks token usage
- **Business Rules**: Role in (user, assistant, system)

## Future Extensions

- Multi-agent collaboration
- Agent learning and fine-tuning
- Custom agent marketplace
- Agent resource limits and quotas
- Agent A/B testing
- Model orchestration and failover
