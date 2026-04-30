# Troubleshooting

## Images not showing

- Confirm the image exists in your configured ox_inventory image folder.
- Confirm the filename exactly matches the item `image` value.
- Confirm the file extension is `.png`.

## Wrong image path

- Verify where your server expects ox_inventory images.
- If you use a custom path, ensure files were copied there.

## Item name mismatch

- Item keys should be lowercase snake_case.
- Image names should match item keys exactly (`raw_meat` -> `raw_meat.png`).

## Invalid Lua syntax

- Check commas between item entries.
- Check braces and quote pairs.
- Validate that each entry remains inside the `return { ... }` table.

## Duplicate item names

- Duplicate keys can overwrite definitions or cause confusion.
- Run `python tools/validate_items.py` to detect duplicates.

## Server cache issues

- If icons still do not update, clear any web/UI cache your setup uses.
- Restart your resource or server after cache clear.

## ox_inventory restart issues

- Restart `ox_inventory` after changing items or image assets.
- If your stack loads from another source file, verify you edited the active file.
