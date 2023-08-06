#####################################################################
# core/api/item/set_nbt_at_player_slot.mcfunction
# written by Eroxen
#
# Uses an Item Modifier to merge the NBT from storage to the
# specified slot in the executing player's inventory
# Storage input:
# - gen:core :
#   - item_nbt : object
# Scoreboard input:
# - gen:temp :
#   - #slot : slot
#####################################################################

function gen:core/internal/item/set_slot_nbt_tree/-106_104