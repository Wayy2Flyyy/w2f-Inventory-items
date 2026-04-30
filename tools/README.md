# Validation Tools

## What the validation script does

`validate_items.py` checks that item names and image references follow the repository naming rules.

## How to run it

From the repository root:

```bash
python tools/validate_items.py
```

## What it checks

- `ox_inventory/items.lua` exists and can be parsed for item keys and image references
- Item keys use lowercase snake_case
- Duplicate item keys are reported
- Item image references use lowercase snake_case and `.png`
- Referenced image name matches `<item_name>.png`
- `images/` filenames use lowercase snake_case and `.png`

## What a failed check means

If a check fails, the script exits with status code `1` and prints clear errors.
Fix the listed issues, then run the script again.
