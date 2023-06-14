data modify storage gen:phead scan_head set value {}
data modify storage gen:phead scan_head.name set from entity @s Inventory[{Slot:-106b}].tag.SkullOwner.Name
data modify storage gen:phead scan_head.namespace set string storage gen:phead scan_head.name 0 24

execute unless data storage gen:phead scan_head{namespace:"genesis.block.crop.seed."} run return 0

data modify storage gen:crops placed_seed set value {}
data modify storage gen:crops placed_seed.name set string storage gen:phead scan_head.name 24

data modify storage gen:crops search_string set from storage gen:crops placed_seed.name
function gen:crops/api/get_crop_id_registry_index
execute if score .index gen.crops.calc matches -1 run return 0

function gen:crops/api/get_crop_definition
execute unless data storage gen:crops crop_definition run return 0

function gen:crops/internal/debug_autoplant/plant