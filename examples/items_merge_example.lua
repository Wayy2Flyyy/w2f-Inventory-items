-- Example: merging entries from this repository into an existing item table
local projectItems = require 'ox_inventory.items'

for name, data in pairs(projectItems) do
    print(('Ready to merge item: %s (%s)'):format(name, data.label))
end
