# Coding Standards

## TypeScript/JavaScript

### General Rules
- Use `const` by default, `let` when reassignment needed
- No `var` declarations
- Explicit return types on functions
- No `any` types; use `unknown` and narrow if needed
- Use interfaces for object shapes, types for unions
- Use strict equality (`===`, `!==`)
- Use optional chaining (`?.`) and nullish coalescing (`??`)

### File Organization
```typescript
// 1. Imports
import { something } from '@package';
import type { Type } from '@package';

// 2. Types and interfaces
interface Props {
  name: string;
}

// 3. Constants
const DEFAULT_TIMEOUT = 5000;

// 4. Exports
export const Component = () => {};
```

### Naming Conventions
- `camelCase` for variables, functions, methods
- `PascalCase` for classes, components, types, interfaces
- `UPPER_SNAKE_CASE` for constants
- Avoid single-letter names except for loop indices

### React Components
```typescript
interface UserCardProps {
  userId: string;
  onSelect?: (id: string) => void;
}

export const UserCard: React.FC<UserCardProps> = ({ userId, onSelect }) => {
  return <div onClick={() => onSelect?.(userId)}>...</div>;
};
```

## Python

### General Rules
- Follow PEP 8
- Type hints on all functions
- Use dataclasses or Pydantic for data models
- Use `async/await` for I/O operations
- Docstrings on all public functions

### File Organization
```python
"""Module docstring."""

import asyncio
from typing import Optional

from fastapi import FastAPI
from pydantic import BaseModel

from app.core.config import settings

DEFAULT_TIMEOUT = 5000

class User(BaseModel):
    """User model."""
    name: str
    email: str

async def fetch_user(user_id: str) -> User:
    """Fetch user by ID."""
    pass
```

### Naming Conventions
- `snake_case` for variables, functions, methods
- `PascalCase` for classes
- `UPPER_SNAKE_CASE` for constants
- `_prefix` for private methods

### Error Handling
```python
try:
    result = await risky_operation()
except ValueError as e:
    logger.error(f"Invalid value: {e}")
    raise HTTPException(status_code=400, detail=str(e))
except Exception as e:
    logger.exception(f"Unexpected error: {e}")
    raise HTTPException(status_code=500, detail="Internal error")
```

## Comments

### When to Comment
- Explain **why**, not **what**
- Complex algorithms
- Non-obvious business logic
- TODO items
- Workarounds for bugs

### Good Comments
```typescript
// Debounce search to reduce API calls
const searchUsers = useCallback(
  debounce((query: string) => {
    // Implementation
  }, 500),
  []
);

// TODO: Implement exponential backoff when rate limited
```

## Imports

### Organization
```typescript
// 1. Node standard library
import fs from 'fs';

// 2. Third-party
import { z } from 'zod';

// 3. Type imports
import type { User } from '@living-knowledge-os/types';

// 4. Local imports
import { config } from '@/config';
```

## Testing

### Test Organization
```typescript
describe('UserService', () => {
  describe('fetchUser', () => {
    it('should fetch user by ID', async () => {
      const userId = '123';
      const user = await userService.fetchUser(userId);
      expect(user.id).toBe(userId);
    });
  });
});
```

## Performance

### Memoization
```typescript
const ExpensiveComponent = React.memo(({ data }) => {
  const processed = useMemo(() => expensiveOperation(data), [data]);
  return <div>{processed}</div>;
});
```

## Security

### Secrets
```typescript
// GOOD: Use environment variables
const API_KEY = process.env.OPENAI_API_KEY;
```

### Input Validation
```python
from pydantic import BaseModel, validator

class UserCreate(BaseModel):
    email: str
    password: str
    
    @validator('email')
    def email_valid(cls, v):
        if '@' not in v:
            raise ValueError('Invalid email')
        return v
```

## Documentation

### JSDoc
```typescript
/**
 * Fetch user by ID.
 * 
 * @param userId - The user identifier
 * @returns The user object
 * @throws {UserNotFound} If user doesn't exist
 */
export async function fetchUser(userId: string): Promise<User> {
  // Implementation
}
```

### Python Docstrings
```python
def fetch_user(user_id: str) -> User:
    """Fetch user by ID.
    
    Args:
        user_id: The user identifier
        
    Returns:
        The user object
        
    Raises:
        UserNotFound: If user doesn't exist
    """
    pass
```
