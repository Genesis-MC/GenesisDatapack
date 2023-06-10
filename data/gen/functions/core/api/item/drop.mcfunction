#####################################################################
# core/api/item/drop.mcfunction
# written by Eroxen
#
# Summons an Item entity at the executing player with random motion
# by dropping a generic item from a loot table and overwriting its Item
# Storage input:
# - gen:core :
#   - drop_item : ItemStack
#####################################################################

loot spawn ~ ~ ~ loot gen:core/item/drop
data modify entity @e[type=item,distance=..1,nbt={Item:{tag:{genesis:{core:{item:{drop:1b}}}}}},limit=1] Item set from storage gen:core drop_item