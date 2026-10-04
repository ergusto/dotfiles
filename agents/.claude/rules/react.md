---
paths:
  - "**/*.tsx"
  - "**/*.jsx"
  - "**/use*.ts"
  - "**/use*.js"
---

# React

## Hooks

- Custom hooks live in their own file, named after the hook (`useFoo.ts` exports `useFoo`). Never define a custom hook inside a component file.
- When a component needs a new hook, create the hook file and import it. Don't inline it and extract later.
- A hook file exports one hook. Small private helpers it needs can stay in the same file.
- A hook used by only one component still gets its own file. Colocate it next to the component (`UserCard/useUserCard.ts`).
- Calling built-in hooks (`useState`, `useEffect`) inside a component is fine. The rule is about defining custom hooks.

## State and effects

- Derive values during render. Don't copy props or state into more state, and don't sync state with `useEffect`.
- Use effects only to synchronise with external systems (network, subscriptions, DOM APIs, timers). Always clean up.
- Handle user events in event handlers, not effects.
- Keep state as local as possible. Lift it only when siblings need it.
- Use a reducer when state transitions depend on each other.

## Components

- Prefer composition (`children`, slots) over wide prop surfaces and prop drilling.
- Keys must be stable and unique. Never use array index for lists that can reorder, insert, or delete.
- Don't define components inside other components.
- Use semantic elements. Interactive elements need accessible names and keyboard support.
- Handle loading, empty, and error states explicitly.

## Performance

- Don't add `useMemo`, `useCallback`, or `memo` without a measured reason, or if the React Compiler is enabled.
