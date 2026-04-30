# Item Definition Examples

## Basic item definition

```lua
['metal_scrap'] = {
    label = 'Metal Scrap',
    weight = 400,
    stack = true,
    close = true,
    description = 'Mixed scrap metal for basic crafting.',
    image = 'metal_scrap.png'
},
```

## Stackable item

```lua
['protein_bar'] = {
    label = 'Protein Bar',
    weight = 90,
    stack = true,
    close = true,
    description = 'Compact nutrition bar.',
    image = 'protein_bar.png'
},
```

## Non-stackable item

```lua
['sultan_project_shell'] = {
    label = 'Sultan Project Shell',
    weight = 6500,
    stack = false,
    close = true,
    description = 'A stripped Sultan shell for full restoration.',
    image = 'sultan_project_shell.png'
},
```

## Heavy item

```lua
['gold_bar'] = {
    label = 'Gold Bar',
    weight = 12500,
    stack = false,
    close = true,
    description = 'Heavy gold bar with high value.',
    image = 'gold_bar.png'
},
```

## Usable carry item

```lua
['bandage'] = {
    label = 'Bandage',
    weight = 80,
    stack = true,
    close = true,
    description = 'Basic bandage for minor injuries.',
    image = 'bandage.png'
},
```

## Vehicle project item

```lua
['drag_turbo_kit'] = {
    label = 'Drag Turbo Kit',
    weight = 1300,
    stack = false,
    close = true,
    description = 'Complete turbo setup for drag builds.',
    image = 'drag_turbo_kit.png'
},
```

## Hunting item

```lua
['premium_pelt'] = {
    label = 'Premium Pelt',
    weight = 950,
    stack = true,
    close = true,
    description = 'Top-grade pelt from a clean harvest.',
    image = 'premium_pelt.png'
},
```
