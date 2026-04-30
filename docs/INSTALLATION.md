# Installation Guide

## Requirements

- Running FiveM server
- ox_inventory installed and operational
- Access to your item definition and inventory image directories

## Step-by-step

1. Copy item definitions from `ox_inventory/items.lua` into your server item configuration.
2. Copy all corresponding image files from `images/` to your ox_inventory image path.
3. Confirm each `image` value in item definitions matches a real filename.
4. Restart your server (or inventory resource if supported).
5. Verify items render with labels, descriptions, and images in inventory UI.

## Troubleshooting

- Missing icon: check filename case and `.png` extension.
- Item not found: ensure item key exists in your loaded items file.
- Script errors: validate Lua syntax and comma placement after each item entry.
