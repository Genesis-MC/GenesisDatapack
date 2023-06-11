#####################################################################
# core/data/item/call_on_item.mcfunction
# written by Eroxen
#
# Gets called once on any Item entity
# Storage context:
# - gen:core :
#   - ground_item : ItemStack
#####################################################################

execute if data storage gen:core ground_item{id:"minecraft:player_head"} run function gen:phead/api/call_on_item
execute if data storage gen:core ground_item{id:"minecraft:sunflower"} run function gen:crops/api/call_on_sunflower_item