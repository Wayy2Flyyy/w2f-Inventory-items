# w2f-Inventory-items

A professional, community-ready inventory item pack for **FiveM** servers using **ox_inventory**.

## What this repository is for

`w2f-Inventory-items` provides a clean baseline for server owners and developers who need:

- Item image assets for inventory UI usage
- Consistent ox_inventory item definitions
- Naming standards for long-term maintainability
- Practical examples and install documentation

## Compatibility

- **FiveM:** Compatible with Cfx.re/FiveM frameworks that use inventory item metadata.
- **ox_inventory:** Designed for the `data/items.lua` style item definitions used by ox_inventory.

> Note: Always verify syntax against your exact ox_inventory version before deploying to production.

## Repository structure

- `images/` — inventory image assets (PNG recommended)
- `ox_inventory/` — ready-to-copy item definitions
- `docs/` — setup, naming, and contribution guides
- `examples/` — integration examples
- `tools/` — lightweight validation scripts

## Installation

1. Clone or download this repository.
2. Copy image files from `images/` into your server inventory image directory (commonly under your ox_inventory web or image path).
3. Copy item definitions from `ox_inventory/items.lua` into your own item configuration.
4. Restart your server/resource and validate in-game item rendering.

Detailed steps: see [docs/INSTALLATION.md](docs/INSTALLATION.md).

## How to add images to ox_inventory

1. Use lowercase `snake_case` for image filenames.
2. Save images as `.png`.
3. Set `image = 'item_name.png'` in the item definition.
4. Ensure the filename exactly matches the configured image value.

## How to copy item definitions

- Open `ox_inventory/items.lua`
- Copy specific items or merge all entries into your server item file
- Keep naming consistent and avoid duplicate keys

## Naming rules

- Use lowercase snake_case only: `animal_trophy`
- Avoid spaces, hyphens, and uppercase letters
- Keep names stable once used in live economy data

Full naming guide: [docs/ITEM_NAMING.md](docs/ITEM_NAMING.md)

## Example item definition

```lua
['raw_meat'] = {
    label = 'Raw Meat',
    weight = 350,
    stack = true,
    close = true,
    description = 'Freshly harvested meat. Cook before consumption.',
    image = 'raw_meat.png'
},
```

## Preview

Add screenshots or image sheets from `images/` to showcase pack quality as the repository grows.

## Contribution guide

- Read [CONTRIBUTING.md](CONTRIBUTING.md)
- Follow naming and quality guidelines in `docs/`
- Run `python3 tools/validate_items.py` before opening a PR

## Credits

Created and maintained by the **w2f-Inventory-items** contributors.

## License

Released under the MIT License. See [LICENSE](LICENSE).
