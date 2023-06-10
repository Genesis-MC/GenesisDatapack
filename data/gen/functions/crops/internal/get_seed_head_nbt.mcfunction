#####################################################################
# crops/internal/get_seed_head_nbt.mcfunction
# written by Eroxen
#
# Gets called on any newly placed seed (Player Head)
# Storage context :
# - gen:crops :
#   - placed_seed :
#     - name : the seed name
# - gen:core :
#   - ground_item : ItemStack
#####################################################################
data modify storage gen:crops search_string set from storage gen:crops placed_seed.name
function gen:crops/api/get_crop_id_registry_index
execute if score .index gen.crops.calc matches -1 run tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/crops -> ","color":"#CBBECB"},{"text":"Encountered player head item with invalid seed ID: ","color":"red"},{"nbt":"search_string","storage":"gen:crops","color":"yellow"}]
execute if score .index gen.crops.calc matches -1 run return 0

execute if data storage gen:core ground_item.tag.genesis run return 0

function gen:crops/api/get_crop_definition
data modify storage gen:crops item set value {Count:1b,id:"minecraft:wheat_seeds"}
data modify storage gen:crops item set from storage gen:crops crop_definition.seed_item
data modify storage gen:crops item.Count set from entity @s Item.Count
data modify entity @s Item set from storage gen:crops item