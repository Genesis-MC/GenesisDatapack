#####################################################################
# phead/data/scan_head.mcfunction
# written by Eroxen
#
# Gets called on any newly placed Player Head that has "genesis." at the start of SkullOwner.Name
# Storage context :
# - gen:phead :
#   - scan_head :
#     - name : the Player Head's SkullOwner.Name
#     - namespace : "genesis."
#     - (@Nullable) item_used : item that was used to place this head. Count = 1b and does not know Slot.
#####################################################################

data modify storage gen:phead scan_head.name_8_24 set string storage gen:phead scan_head.name 8 24
data modify storage gen:phead scan_head.name_8_26 set string storage gen:phead scan_head.name 8 26

execute if data storage gen:phead scan_head{name_8_24:"block.crop.seed."} run function gen:crops/api/call_on_placed_head
execute if data storage gen:phead scan_head{name_8_24:"block.mineralogy"} run function gen:professions/mineralogy/internal/crystalarium/spawncrystalarium
execute if data storage gen:phead scan_head{name_8_24:"block.gear.helm."} run function gen:phead/api/cannot_place
execute if data storage gen:phead scan_head{name_8_24:"block.lootcrate."} run function gen:player_events/open_treasure
execute if data storage gen:phead scan_head{name_8_26:"block.workstation."} run function gen:workstation/api/call_on_placed_head