# Item Naming Rules

Consistent naming helps avoid broken image links and item lookup issues.

## Required rules

- Use **lowercase snake_case** for all item names.
- Image filenames should match item names exactly.
- Use `.png` image format.
- Avoid spaces, capital letters, symbols, and duplicate names.

## Correct examples

- `raw_meat.png`
- `animal_pelt.png`
- `drag_turbo_kit.png`
- `sultan_project_shell.png`

## Incorrect examples

- `Raw Meat.png`
- `animal pelt.png`
- `DragTurboKit.png`
- `sultan-project-shell.png`

## Why this matters

If naming is inconsistent, ox_inventory may load the item but fail to show the icon, or scripts may fail to reference the correct item key.
