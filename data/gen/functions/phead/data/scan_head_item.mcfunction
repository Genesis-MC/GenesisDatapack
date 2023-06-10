#####################################################################
# phead/data/scan_head_item.mcfunction
# written by Eroxen
#
# Gets called once on any Player Head item that has "genesis." at the start of SkullOwner.Name
# Storage context :
# - gen:phead :
#   - scan_head :
#     - name : the Player Head's SkullOwner.Name
#     - namespace : "genesis."
#####################################################################

data modify storage gen:phead scan_head.name_8_24 set string storage gen:phead scan_head.name 8 24
execute if data storage gen:phead scan_head{name_8_24:"block.crop.seed."} run function gen:crops/api/call_on_head_item