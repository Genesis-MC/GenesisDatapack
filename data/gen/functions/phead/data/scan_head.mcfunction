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
execute if data storage gen:phead scan_head{name_8_24:"block.crop.seed."} run function gen:crops/api/call_on_placed_head