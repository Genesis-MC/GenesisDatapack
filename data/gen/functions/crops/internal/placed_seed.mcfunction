#####################################################################
# crops/internal/placed_seed.mcfunction
# written by Eroxen
#
# Gets called on any newly placed seed (Player Head)
# Storage context :
# - gen:crops :
#   - placed_seed :
#     - name : the seed name
#####################################################################

data modify storage gen:crops search_string set from storage gen:crops placed_seed.name
function gen:crops/api/get_crop_id_registry_index
function gen:crops/api/get_crop_definition

execute unless predicate gen:crops/valid_location_for_seed run function gen:crops/internal/cannot_place_seed
execute unless predicate gen:crops/valid_location_for_seed run tellraw @s[tag=gen.dev.debug] ["",{"text":"gen/crops -> ","color":"#CBBECB"},{"text":"Invalid location for seed","color":"red"}]
execute unless predicate gen:crops/valid_location_for_seed run return 0

execute if score .index gen.crops.calc matches -1 run function gen:crops/internal/cannot_place_seed
execute if score .index gen.crops.calc matches -1 run tellraw @s[tag=gen.dev.debug] ["",{"text":"gen/crops -> ","color":"#CBBECB"},{"text":"Could not find registry index for seed: ","color":"red"},{"nbt":"search_string","storage":"gen:crops","color":"yellow"}]
execute if score .index gen.crops.calc matches -1 run return 0

execute unless data storage gen:crops crop_definition run function gen:crops/internal/cannot_place_seed
execute unless data storage gen:crops crop_definition run return 0

execute if data storage gen:crops crop_definition.requirements run function gen:crops/internal/requirements/check_all
execute if data storage gen:crops crop_definition.requirements if score #requirements_met gen.crops.calc matches 0 run function gen:crops/internal/cannot_place_seed
execute if data storage gen:crops crop_definition.requirements if score #requirements_met gen.crops.calc matches 0 run return 0

function gen:crops/internal/place/place_crop