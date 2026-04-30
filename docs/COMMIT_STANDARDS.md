# Commit Standards

## What a meaningful commit is

A meaningful commit represents one real, reviewable improvement that moves the project forward.

## Writing commit messages

Use short conventional messages:

`<type>: <clear summary>`

Example: `items: add EMS utility item definitions`

## Why real commits matter

- Easier review and rollback
- Better project history
- Clear ownership of decisions

## Why spam commits are harmful

- Hide useful history
- Slow code review
- Reduce contributor trust

## Group commits logically

- Keep one intent per commit.
- Avoid mixing docs, tooling, and item changes in one commit unless tightly coupled.

## Recommended prefixes and examples

- `docs:` — `docs: add troubleshooting guide`
- `items:` — `items: add crafting material definitions`
- `images:` — `images: add optimized hunting icon set`
- `tools:` — `tools: improve item validator output`
- `ci:` — `ci: add validator workflow for pull requests`
- `examples:` — `examples: add mechanic shop inventory sample`
- `chore:` — `chore: update changelog for unreleased docs`
- `fix:` — `fix: correct image reference for premium_pelt`
