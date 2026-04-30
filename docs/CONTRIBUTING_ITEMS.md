# Contributing New Items

This guide explains how to contribute inventory items in a clean and consistent way.

## 1) Add item images

- Use transparent `.png` where possible.
- Keep icon style clear and readable at small sizes.
- Save using lowercase snake_case names.

## 2) Name files correctly

- Match item name and image filename exactly.
- Example: `animal_pelt` -> `animal_pelt.png`

## 3) Add matching ox_inventory definitions

When adding an item to `ox_inventory/items.lua`, include:

- `label`
- `weight`
- `stack`
- `close`
- `description`
- `image`

## 4) Open a clean pull request

- Keep the PR focused on one topic.
- Explain what was added and why.
- Include preview images when adding new icons.
- Update docs if your item set introduces new naming patterns.

## 5) Quality standards

- No duplicate item names
- No stolen or copyrighted assets
- No low-quality or unreadable icons
- No broken image references
- Valid Lua syntax
