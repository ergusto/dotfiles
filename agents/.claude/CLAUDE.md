# Global Execution Protocols

## Multi-Step & Skill State Persistence

When executing multi-step workflows, refactoring sequences, or explicit skills:

1. ALWAYS start Line 1 of every response with:
   [ACTIVE SKILL: <Skill Name> | STEP: <Current Step / Total Steps>]
2. Do not insert greetings or blank lines before this header.
3. Single-turn, simple queries (e.g., quick command checks or quick answers) do not require this header unless requested.

# Coding Style

## Comments

- Do not add comments that merely restate what the code does.
- Avoid AI-style explanatory comments.
- Only write comments when they provide information that isn't obvious from reading the code itself, such as:
  - why an approach was chosen
  - workarounds for library or browser bugs
  - non-obvious business rules
  - performance or security considerations
- Never add section-divider comments.
- Prefer expressive names over explanatory comments.
- If a function you're writing needs extensive comments to understand, refactor it instead.
- Do not add comments to existing functions unless for a very good reason.

## Writing

- Write naturally and concisely.
- Avoid corporate or AI-sounding phrases.
- Don't over-explain straightforward changes.
- Don't add unnecessary adjectives.
