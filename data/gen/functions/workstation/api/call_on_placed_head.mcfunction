#####################################################################
# workstation/api/call_on_paced_head.mcfunction
# written by Eroxen
#
# Gets called on any newly placed Player Head that has "genesis.block.workstation." at the start of SkullOwner.Name
# Storage context :
# - gen:phead :
#   - scan_head :
#     - name : the Player Head's SkullOwner.Name
#     - namespace : "genesis."
#     - (@Nullable) item_used : item that was used to place this head. Count = 1b and does not know Slot.
#     - name_8_26 : "block.workstation."
#####################################################################

data modify storage gen:workstation placement_info set value {cardinal_direction:0f,inverse_cardinal_direction:180f}
data modify storage gen:workstation placement_info.name set string storage gen:phead scan_head.name 26

execute if entity @s[y_rotation=45..135] run data modify storage gen:workstation placement_info merge value {cardinal_direction:90f,inverse_cardinal_direction:-90f}
execute if entity @s[y_rotation=135..225] run data modify storage gen:workstation placement_info merge value {cardinal_direction:180f,inverse_cardinal_direction:0f}
execute if entity @s[y_rotation=-135..-45] run data modify storage gen:workstation placement_info merge value {cardinal_direction:-90f,inverse_cardinal_direction:90f}

execute if data storage gen:workstation placement_info{name:"cooking_pot"} run function gen:workstation/cooking_pot/place with storage gen:workstation placement_info