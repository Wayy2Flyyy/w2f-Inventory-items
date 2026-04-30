-- Example ox_inventory item definitions for w2f-Inventory-items.
-- Copy these entries into your active ox_inventory items file.
-- Place matching PNG files in your ox_inventory web/images directory (or your configured image path).

return {
    ['raw_meat'] = {
        label = 'Raw Meat',
        weight = 250,
        stack = true,
        close = true,
        description = 'Fresh raw meat collected from a hunted animal.',
        image = 'raw_meat.png'
    },

    ['animal_pelt'] = {
        label = 'Animal Pelt',
        weight = 700,
        stack = true,
        close = true,
        description = 'A cured pelt ready for trade or crafting.',
        image = 'animal_pelt.png'
    },

    ['animal_part'] = {
        label = 'Animal Part',
        weight = 400,
        stack = true,
        close = true,
        description = 'A harvested animal part used in recipes.',
        image = 'animal_part.png'
    },

    ['animal_trophy'] = {
        label = 'Animal Trophy',
        weight = 1400,
        stack = false,
        close = true,
        description = 'A rare hunting trophy for collectors.',
        image = 'animal_trophy.png'
    },

    ['deer_pelt'] = {
        label = 'Deer Pelt',
        weight = 850,
        stack = true,
        close = true,
        description = 'A high-quality pelt taken from a deer.',
        image = 'deer_pelt.png'
    },

    ['boar_tusk'] = {
        label = 'Boar Tusk',
        weight = 300,
        stack = true,
        close = true,
        description = 'A sturdy tusk from a wild boar.',
        image = 'boar_tusk.png'
    },

    ['bear_claw'] = {
        label = 'Bear Claw',
        weight = 220,
        stack = true,
        close = true,
        description = 'A sharp bear claw kept as proof of a hunt.',
        image = 'bear_claw.png'
    },

    ['sultan_project_shell'] = {
        label = 'Sultan Project Shell',
        weight = 6500,
        stack = false,
        close = true,
        description = 'A stripped Sultan shell for a full build project.',
        image = 'sultan_project_shell.png'
    },

    ['launch_spec_engine'] = {
        label = 'Launch Spec Engine',
        weight = 3200,
        stack = false,
        close = true,
        description = 'A built engine package tuned for launch performance.',
        image = 'launch_spec_engine.png'
    },

    ['launch_spec_blueprint'] = {
        label = 'Launch Spec Blueprint',
        weight = 50,
        stack = true,
        close = true,
        description = 'Technical plans for a launch-focused build setup.',
        image = 'launch_spec_blueprint.png'
    },

    ['drag_turbo_kit'] = {
        label = 'Drag Turbo Kit',
        weight = 1300,
        stack = false,
        close = true,
        description = 'A complete turbo kit designed for drag racing.',
        image = 'drag_turbo_kit.png'
    },

    ['fuel_system'] = {
        label = 'Fuel System',
        weight = 1100,
        stack = false,
        close = true,
        description = 'Upgraded fuel components for high-output engines.',
        image = 'fuel_system.png'
    },

    ['ecu'] = {
        label = 'ECU',
        weight = 180,
        stack = true,
        close = true,
        description = 'Programmable control unit for engine tuning.',
        image = 'ecu.png'
    },

    ['chassis_reinforcement'] = {
        label = 'Chassis Reinforcement',
        weight = 2200,
        stack = false,
        close = true,
        description = 'Reinforcement parts for a rigid performance chassis.',
        image = 'chassis_reinforcement.png'
    },

    ['paint_kit'] = {
        label = 'Paint Kit',
        weight = 650,
        stack = true,
        close = true,
        description = 'Paint materials for a full vehicle respray.',
        image = 'paint_kit.png'
    },

    ['livery_kit'] = {
        label = 'Livery Kit',
        weight = 500,
        stack = true,
        close = true,
        description = 'Wrap and decal pack for custom liveries.',
        image = 'livery_kit.png'
    },

    ['mechanics_workbench'] = {
        label = "Mechanic's Workbench",
        weight = 10000,
        stack = false,
        close = true,
        description = 'Heavy workbench used for major assembly tasks.',
        image = 'mechanics_workbench.png'
    },

    ['tire_stack'] = {
        label = 'Tire Stack',
        weight = 3000,
        stack = false,
        close = true,
        description = 'Stack of spare tires for workshop inventory.',
        image = 'tire_stack.png'
    },

    ['transmission'] = {
        label = 'Transmission',
        weight = 2600,
        stack = false,
        close = true,
        description = 'Performance transmission for power delivery upgrades.',
        image = 'transmission.png'
    },

    ['suspension'] = {
        label = 'Suspension',
        weight = 1800,
        stack = false,
        close = true,
        description = 'Suspension components for handling improvements.',
        image = 'suspension.png'
    }
}
