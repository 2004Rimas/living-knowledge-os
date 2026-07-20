# Living Knowledge OS - Web Application

Production-ready Next.js 15 application serving as the frontend for Living Knowledge OS.

## Architecture

- **Framework**: Next.js 15
- **Runtime**: React with App Router
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **UI Components**: shadcn/ui
- **Code Quality**: ESLint + Prettier

## Directory Structure

```
app/              - Next.js App Router pages and layouts
components/       - Reusable React components
hooks/            - Custom React hooks
lib/              - Utility functions and helpers
providers/        - Context providers and wrappers
services/         - API service clients
store/            - State management (Redux/Zustand)
styles/           - Global styles and Tailwind configuration
types/            - TypeScript type definitions
utils/            - General utilities
```

## Purpose

Frontend application providing user-facing interfaces for:
- Dashboard and analytics
- Project management
- AI chat and agent interactions
- Knowledge base search and browsing
- Workspace and team collaboration
- User settings and preferences

## Responsibilities

- Render responsive UI components
- Manage client-side state and caching
- Handle user interactions and navigation
- Communicate with backend API
- Execute client-side authentication
- Format and present data

## Dependencies

- Next.js 15
- React 19+
- TypeScript 5+
- Tailwind CSS 3+
- shadcn/ui component library

## Future Implementation

- Real-time WebSocket connections
- Offline-first capabilities
- Progressive Web App features
- Advanced state management
- Performance optimizations
