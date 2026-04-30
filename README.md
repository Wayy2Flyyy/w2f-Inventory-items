# w2f-Inventory-items

A clean and professional repository for **FiveM inventory item images** with **ox_inventory-compatible** structure and documentation.

## About this repository

This project is designed to help FiveM server owners organize and maintain inventory item assets in a clear, community-friendly format.

It focuses on:

- Inventory item image organization
- ox_inventory-ready conventions
- Clear documentation for setup and contribution

## Features

- Professional open-source folder structure
- Beginner-friendly README and contribution guidance
- Naming rules for item keys and image files
- Placeholder tracking for empty folders
- MIT licensed repository

## Item categories

- Hunting
- Vehicle project
- Crafting materials
- Food and drink
- Medical
- Economy and utility

This repository now includes definitions across all categories above to support a wider range of FiveM server economies.

## Documentation

- [Installation Guide](docs/INSTALLATION.md)
- [Item Naming Rules](docs/ITEM_NAMING.md)
- [ox_inventory Usage Guide](docs/OX_INVENTORY_GUIDE.md)
- [Contributing Items](docs/CONTRIBUTING_ITEMS.md)
- [Item Categories](docs/ITEM_CATEGORIES.md)
- [Examples](docs/EXAMPLES.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)
- [Validation Guide](docs/VALIDATION.md)

## Validation

Run the item validator from the repository root:

```bash
python tools/validate_items.py
```

## Repository structure

```text
w2f-Inventory-items/
├─ .github/
├─ docs/
├─ images/
├─ ox_inventory/
├─ tools/
├─ CHANGELOG.md
├─ CONTRIBUTING.md
├─ LICENSE
└─ README.md
```

## Basic installation

1. Download or clone this repository.
2. Place image files from `images/` into your inventory image directory.
3. Follow your server's `ox_inventory` item configuration pattern.
4. Keep names consistent between item keys and image filenames.

## Example ox_inventory item definition

```lua
['raw_meat'] = {
    label = 'Raw Meat',
    weight = 350,
    stack = true,
    close = true,
    description = 'Fresh meat from hunting.',
    image = 'raw_meat.png'
}
```

## Item naming rules

- Use lowercase snake_case only (example: `deer_pelt`)
- Use matching image filename (example: `deer_pelt.png`)
- Avoid spaces, hyphens, and uppercase letters

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) before opening a pull request.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE).

## Credits

Created and maintained by **Wayy2Flyyy** and contributors.
