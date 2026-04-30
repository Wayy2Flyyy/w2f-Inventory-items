# Validation Guide

## Run the validator

From repository root:

```bash
python tools/validate_items.py
```

## What it checks

- Invalid item names in `ox_inventory/items.lua`
- Duplicate item names
- Invalid image filenames in `images/`
- Missing `.png` image extensions
- Image references that do not match item keys
- Missing required fields (`label`, `weight`, `stack`, `close`, `description`, `image`)

## Fixing common validation errors

- **Invalid key name:** rename key to lowercase snake_case.
- **Image mismatch:** set `image` to `<item_key>.png`.
- **Missing .png:** rename file and update the `image` field.
- **Missing field:** add the required field to the item definition.
- **Duplicate key:** keep one key and rename/remove duplicates.

## Why consistency matters

Consistent names and complete fields reduce inventory errors and make item packs easier to maintain across multiple contributors.
