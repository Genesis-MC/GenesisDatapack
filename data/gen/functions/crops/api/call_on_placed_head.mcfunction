#####################################################################
# crops/api/call_on_paced_head.mcfunction
# written by Eroxen
#
# Gets called on any newly placed Player Head that has "genesis.block.crop.seed." at the start of SkullOwner.Name
# Storage context :
# - gen:phead :
#   - scan_head :
#     - name : the Player Head's SkullOwner.Name
#     - namespace : "genesis."
#     - (@Nullable) item_used : item that was used to place this head. Count = 1b and does not know Slot.
#     - name_8_24 : "block.crop.seed."
#####################################################################

data modify storage gen:crops placed_seed set value {}
data modify storage gen:crops placed_seed.name set string storage gen:phead scan_head.name 24
execute if data storage gen:crops placed_seed.name run function gen:crops/internal/placed_seed