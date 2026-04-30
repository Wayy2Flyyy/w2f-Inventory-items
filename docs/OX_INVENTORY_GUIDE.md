# ox_inventory Integration Guide

## Item definition fields used in this project

- `label`: Display name shown to players
- `weight`: Inventory weight value (integer)
- `stack`: Whether the item can stack in one slot
- `close`: Whether UI should close after use/interaction
- `description`: Short in-game context
- `image`: Inventory icon filename

## Integration workflow

1. Select the items you need from `ox_inventory/items.lua`.
2. Merge entries into your active ox_inventory item file.
3. Add or copy matching icons to your inventory image directory.
4. Restart and verify with test characters.

## Best practices

- Keep one source-of-truth file for item definitions.
- Validate naming and duplicates before deployment.
- Use consistent weight scaling across your economy.
