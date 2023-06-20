#####################################################################
# phead/api/cannot_place.mcfunction
# written by Eroxen
#
# Called when the head cannot be placed in the position it originally was.
# Replaces the block with air and drops the player head as an item.
# If possible, gives back the exact item that was used to place the head.
# If called by a player, tries to give the item back to said player.
# Storage context :
# - gen:phead :
#   - scan_head :
#     - name : the Player Head's SkullOwner.Name
#     - namespace : "genesis."
#     - (@Nullable) item_used : item that was used to place this head. Count = 1b and does not know Slot.
#####################################################################

execute unless data storage gen:phead scan_head.item_used run data modify storage gen:phead give_back_item set value {Count:1b,id:"minecraft:player_head"}
execute unless data storage gen:phead scan_head.item_used run data modify storage gen:phead give_back_item.tag.SkullOwner set from block ~ ~ ~ SkullOwner
execute if data storage gen:phead scan_head.item_used run data modify storage gen:phead give_back_item set from storage gen:phead scan_head.item_used

setblock ~ ~ ~ air
execute unless entity @s[type=player] run loot spawn ~ ~ ~ loot gen:phead/give_back_item
execute if entity @s[type=player] run function gen:phead/internal/cannot_place/player