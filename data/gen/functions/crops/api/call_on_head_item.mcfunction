#####################################################################
# crops/api/call_on_head_item.mcfunction
# written by Eroxen
#
# Gets called once on any Player Head item that has "genesis.block.crop.seed." at the start of SkullOwner.Name
# Storage context :
# - gen:phead :
#   - scan_head :
#     - name : the Player Head's SkullOwner.Name
#     - namespace : "genesis."
#     - name_8_24 : "block.crop.seed."
#####################################################################

data modify storage gen:crops placed_seed set value {}
data modify storage gen:crops placed_seed.name set string storage gen:phead scan_head.name 24
execute if data storage gen:crops placed_seed.name run function gen:crops/internal/get_seed_head_nbt