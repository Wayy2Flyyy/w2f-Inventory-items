-- Example ox_inventory item definitions for w2f-Inventory-items.
-- Copy these entries into your active ox_inventory items file.
-- Place matching PNG files in your ox_inventory web/images directory (or your configured image path).

return {
    -- Hunting items
    ['raw_meat'] = { label = 'Raw Meat', weight = 250, stack = true, close = true, description = 'Fresh raw meat from a hunted animal.', image = 'raw_meat.png' },
    ['cooked_meat'] = { label = 'Cooked Meat', weight = 220, stack = true, close = true, description = 'Cooked meat ready to eat.', image = 'cooked_meat.png' },
    ['animal_pelt'] = { label = 'Animal Pelt', weight = 700, stack = true, close = true, description = 'A cured pelt ready for trade.', image = 'animal_pelt.png' },
    ['animal_part'] = { label = 'Animal Part', weight = 400, stack = true, close = true, description = 'A harvested animal part for crafting.', image = 'animal_part.png' },
    ['animal_trophy'] = { label = 'Animal Trophy', weight = 1400, stack = false, close = true, description = 'A rare trophy from a successful hunt.', image = 'animal_trophy.png' },
    ['deer_pelt'] = { label = 'Deer Pelt', weight = 850, stack = true, close = true, description = 'A quality deer pelt for premium sale.', image = 'deer_pelt.png' },
    ['boar_tusk'] = { label = 'Boar Tusk', weight = 300, stack = true, close = true, description = 'A sturdy tusk taken from a wild boar.', image = 'boar_tusk.png' },
    ['bear_claw'] = { label = 'Bear Claw', weight = 220, stack = true, close = true, description = 'A claw kept as proof of a dangerous hunt.', image = 'bear_claw.png' },
    ['hunting_bait'] = { label = 'Hunting Bait', weight = 180, stack = true, close = true, description = 'Bait used to lure wildlife.', image = 'hunting_bait.png' },
    ['hunting_knife'] = { label = 'Hunting Knife', weight = 500, stack = false, close = true, description = 'A sharp knife for field processing.', image = 'hunting_knife.png' },
    ['tracking_device'] = { label = 'Tracking Device', weight = 350, stack = false, close = true, description = 'Device used to track animal movement.', image = 'tracking_device.png' },
    ['animal_fat'] = { label = 'Animal Fat', weight = 280, stack = true, close = true, description = 'Rendered fat used in crafting recipes.', image = 'animal_fat.png' },
    ['bone_fragment'] = { label = 'Bone Fragment', weight = 150, stack = true, close = true, description = 'Small bone pieces for trade or crafting.', image = 'bone_fragment.png' },
    ['premium_pelt'] = { label = 'Premium Pelt', weight = 950, stack = true, close = true, description = 'Top-grade pelt from a clean harvest.', image = 'premium_pelt.png' },

    -- Vehicle project items
    ['sultan_project_shell'] = { label = 'Sultan Project Shell', weight = 6500, stack = false, close = true, description = 'A stripped Sultan shell for full restoration.', image = 'sultan_project_shell.png' },
    ['launch_spec_engine'] = { label = 'Launch Spec Engine', weight = 3200, stack = false, close = true, description = 'Engine package tuned for hard launches.', image = 'launch_spec_engine.png' },
    ['launch_spec_blueprint'] = { label = 'Launch Spec Blueprint', weight = 50, stack = true, close = true, description = 'Technical plans for a launch-focused setup.', image = 'launch_spec_blueprint.png' },
    ['drag_turbo_kit'] = { label = 'Drag Turbo Kit', weight = 1300, stack = false, close = true, description = 'Complete turbo setup for drag builds.', image = 'drag_turbo_kit.png' },
    ['fuel_system'] = { label = 'Fuel System', weight = 1100, stack = false, close = true, description = 'Upgraded fuel system for high output.', image = 'fuel_system.png' },
    ['ecu'] = { label = 'ECU', weight = 180, stack = true, close = true, description = 'Programmable control unit for tuning.', image = 'ecu.png' },
    ['chassis_reinforcement'] = { label = 'Chassis Reinforcement', weight = 2200, stack = false, close = true, description = 'Reinforcement parts for chassis rigidity.', image = 'chassis_reinforcement.png' },
    ['paint_kit'] = { label = 'Paint Kit', weight = 650, stack = true, close = true, description = 'Paint materials for vehicle resprays.', image = 'paint_kit.png' },
    ['livery_kit'] = { label = 'Livery Kit', weight = 500, stack = true, close = true, description = 'Decal and wrap kit for custom liveries.', image = 'livery_kit.png' },
    ['mechanics_workbench'] = { label = "Mechanic's Workbench", weight = 10000, stack = false, close = true, description = 'Heavy workbench for complex assembly.', image = 'mechanics_workbench.png' },
    ['tire_stack'] = { label = 'Tire Stack', weight = 3000, stack = false, close = true, description = 'Stack of performance tires.', image = 'tire_stack.png' },
    ['transmission'] = { label = 'Transmission', weight = 2600, stack = false, close = true, description = 'Performance transmission unit.', image = 'transmission.png' },
    ['suspension'] = { label = 'Suspension', weight = 1800, stack = false, close = true, description = 'Suspension setup for handling upgrades.', image = 'suspension.png' },
    ['forged_pistons'] = { label = 'Forged Pistons', weight = 900, stack = false, close = true, description = 'High-strength pistons for race engines.', image = 'forged_pistons.png' },
    ['racing_clutch'] = { label = 'Racing Clutch', weight = 700, stack = false, close = true, description = 'Clutch assembly built for hard shifts.', image = 'racing_clutch.png' },
    ['carbon_hood'] = { label = 'Carbon Hood', weight = 1500, stack = false, close = true, description = 'Lightweight hood for reduced front weight.', image = 'carbon_hood.png' },
    ['widebody_kit'] = { label = 'Widebody Kit', weight = 2400, stack = false, close = true, description = 'Body panel kit for wide stance builds.', image = 'widebody_kit.png' },
    ['roll_cage'] = { label = 'Roll Cage', weight = 2800, stack = false, close = true, description = 'Interior safety cage for track cars.', image = 'roll_cage.png' },
    ['nitrous_bottle'] = { label = 'Nitrous Bottle', weight = 1200, stack = false, close = true, description = 'Nitrous bottle for short power boosts.', image = 'nitrous_bottle.png' },

    -- Crafting materials
    ['metal_scrap'] = { label = 'Metal Scrap', weight = 400, stack = true, close = true, description = 'Mixed scrap metal for basic crafting.', image = 'metal_scrap.png' },
    ['steel_bar'] = { label = 'Steel Bar', weight = 900, stack = true, close = true, description = 'Refined steel bar for fabrication.', image = 'steel_bar.png' },
    ['copper_wire'] = { label = 'Copper Wire', weight = 250, stack = true, close = true, description = 'Wire spool used in electrical jobs.', image = 'copper_wire.png' },
    ['rubber_piece'] = { label = 'Rubber Piece', weight = 180, stack = true, close = true, description = 'Rubber material for seals and mounts.', image = 'rubber_piece.png' },
    ['plastic_sheet'] = { label = 'Plastic Sheet', weight = 220, stack = true, close = true, description = 'Sheet plastic used in general crafting.', image = 'plastic_sheet.png' },
    ['glass_shard'] = { label = 'Glass Shard', weight = 120, stack = true, close = true, description = 'Broken glass pieces for crafting blends.', image = 'glass_shard.png' },
    ['electronic_parts'] = { label = 'Electronic Parts', weight = 300, stack = true, close = true, description = 'Assorted electronic parts for repairs.', image = 'electronic_parts.png' },
    ['circuit_board'] = { label = 'Circuit Board', weight = 280, stack = true, close = true, description = 'A circuit board for advanced electronics.', image = 'circuit_board.png' },
    ['adhesive_tube'] = { label = 'Adhesive Tube', weight = 160, stack = true, close = true, description = 'Industrial adhesive for part bonding.', image = 'adhesive_tube.png' },
    ['fabric_roll'] = { label = 'Fabric Roll', weight = 600, stack = true, close = true, description = 'Roll of fabric used in interior work.', image = 'fabric_roll.png' },
    ['leather_strip'] = { label = 'Leather Strip', weight = 200, stack = true, close = true, description = 'Cut leather strips for craft projects.', image = 'leather_strip.png' },
    ['carbon_fiber'] = { label = 'Carbon Fiber', weight = 350, stack = true, close = true, description = 'Carbon fiber sheets for light components.', image = 'carbon_fiber.png' },

    -- Food and drink items
    ['burger'] = { label = 'Burger', weight = 220, stack = true, close = true, description = 'A hot burger meal.', image = 'burger.png' },
    ['hotdog'] = { label = 'Hotdog', weight = 180, stack = true, close = true, description = 'A quick grilled hotdog.', image = 'hotdog.png' },
    ['water_bottle'] = { label = 'Water Bottle', weight = 500, stack = true, close = true, description = 'A bottle of clean drinking water.', image = 'water_bottle.png' },
    ['coffee_cup'] = { label = 'Coffee Cup', weight = 300, stack = true, close = true, description = 'Fresh coffee for a quick boost.', image = 'coffee_cup.png' },
    ['energy_drink'] = { label = 'Energy Drink', weight = 330, stack = true, close = true, description = 'Caffeinated drink for extra energy.', image = 'energy_drink.png' },
    ['donut'] = { label = 'Donut', weight = 120, stack = true, close = true, description = 'Sweet snack with quick calories.', image = 'donut.png' },
    ['fries'] = { label = 'Fries', weight = 200, stack = true, close = true, description = 'A portion of hot fries.', image = 'fries.png' },
    ['sandwich'] = { label = 'Sandwich', weight = 210, stack = true, close = true, description = 'Packed sandwich for travel.', image = 'sandwich.png' },
    ['soda_can'] = { label = 'Soda Can', weight = 350, stack = true, close = true, description = 'Carbonated soft drink can.', image = 'soda_can.png' },
    ['protein_bar'] = { label = 'Protein Bar', weight = 90, stack = true, close = true, description = 'Compact nutrition bar.', image = 'protein_bar.png' },

    -- Medical items
    ['bandage'] = { label = 'Bandage', weight = 80, stack = true, close = true, description = 'Basic bandage for minor injuries.', image = 'bandage.png' },
    ['medkit'] = { label = 'Medkit', weight = 1800, stack = false, close = true, description = 'Full medkit for emergency treatment.', image = 'medkit.png' },
    ['painkillers'] = { label = 'Painkillers', weight = 60, stack = true, close = true, description = 'Pain relief tablets.', image = 'painkillers.png' },
    ['antiseptic_wipe'] = { label = 'Antiseptic Wipe', weight = 30, stack = true, close = true, description = 'Sterile wipe for wound cleaning.', image = 'antiseptic_wipe.png' },
    ['ice_pack'] = { label = 'Ice Pack', weight = 400, stack = true, close = true, description = 'Cold pack to reduce swelling.', image = 'ice_pack.png' },
    ['trauma_pack'] = { label = 'Trauma Pack', weight = 2200, stack = false, close = true, description = 'Advanced trauma supply pack.', image = 'trauma_pack.png' },

    -- Economy and utility items
    ['cash_roll'] = { label = 'Cash Roll', weight = 100, stack = true, close = true, description = 'Rolled cash used in transactions.', image = 'cash_roll.png' },
    ['marked_bills'] = { label = 'Marked Bills', weight = 120, stack = true, close = true, description = 'Marked bills requiring laundering.', image = 'marked_bills.png' },
    ['gold_bar'] = { label = 'Gold Bar', weight = 12500, stack = false, close = true, description = 'Heavy gold bar with high value.', image = 'gold_bar.png' },
    ['lockpick'] = { label = 'Lockpick', weight = 90, stack = true, close = true, description = 'Basic lockpick for simple locks.', image = 'lockpick.png' },
    ['advanced_lockpick'] = { label = 'Advanced Lockpick', weight = 140, stack = true, close = true, description = 'Improved lockpick for harder locks.', image = 'advanced_lockpick.png' },
    ['repair_kit'] = { label = 'Repair Kit', weight = 2000, stack = false, close = true, description = 'Toolkit for vehicle field repairs.', image = 'repair_kit.png' },
    ['cleaning_kit'] = { label = 'Cleaning Kit', weight = 900, stack = true, close = true, description = 'Cleaning kit for equipment and vehicles.', image = 'cleaning_kit.png' },
    ['phone'] = { label = 'Phone', weight = 250, stack = false, close = true, description = 'Mobile phone for communication.', image = 'phone.png' },
    ['radio'] = { label = 'Radio', weight = 500, stack = false, close = true, description = 'Portable radio for team channels.', image = 'radio.png' },
    ['keycard'] = { label = 'Keycard', weight = 40, stack = true, close = true, description = 'Access card for restricted doors.', image = 'keycard.png' }
}
