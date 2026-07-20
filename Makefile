.PHONY: help dev build lint test docker-up docker-down

.DEFAULT_GOAL := help

help: ## Display this help message
	@echo "Living Knowledge OS - Development Commands"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-20s %s\n", $$1, $$2}'

dev: ## Start development servers
	pnpm dev

build: ## Build for production
	pnpm build

lint: ## Run linters
	pnpm lint

format: ## Format code
	pnpm format

test: ## Run tests
	pnpm test

type-check: ## Check TypeScript types
	pnpm type-check

docker-up: ## Start Docker services
	docker-compose up -d

docker-down: ## Stop Docker services
	docker-compose down

docker-logs: ## View Docker logs
	docker-compose logs -f

install: ## Install dependencies
	pnpm install

clean: ## Clean build artifacts
	rm -rf dist build .next .pytest_cache .coverage

db-migrate: ## Run database migrations
	cd apps/api && alembic upgrade head

db-rollback: ## Rollback database migrations
	cd apps/api && alembic downgrade -1
