# ox_inventory Usage Guide

## What ox_inventory is used for in this repository

This repository provides item assets and definitions that are intended to be copied into an `ox_inventory` setup for FiveM servers.

## How to copy item definitions

1. Open `ox_inventory/items.lua` in this repository.
2. Copy the items you need.
3. Paste them into your server's active ox_inventory items file.
4. Save and restart your relevant resources.

## Where images usually go

Put item `.png` files in your ox_inventory image directory (commonly the web/images location used by your server).

## How image references work

In each item definition, the `image` field points to an image filename.

Example:

```lua
['raw_meat'] = {
    label = 'Raw Meat',
    weight = 250,
    stack = true,
    close = true,
    description = 'Fresh raw meat collected from a hunted animal.',
    image = 'raw_meat.png'
},
```

## Why filenames must match

If `image = 'raw_meat.png'`, then the actual file must be named exactly `raw_meat.png` in the correct image folder.

## Common ox_inventory mistakes

- Missing image files
- Wrong filename case
- Wrong extension (`.jpg` vs `.png`)
- Invalid Lua syntax in item definitions
- Restarting wrong resource after changes
