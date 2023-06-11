#####################################################################
# core/api/item/give.mcfunction
# written by Eroxen
#
# Summons an Item entity at the executing player with that player's UUID as the Owner
# Storage input:
# - gen:core :
#   - give_item : ItemStack
#####################################################################

execute at @s run summon item ~ ~ ~ {Tags:["gen.new_item"],Item:{id:"minecraft:stone",Count:1b}}
execute at @s run data modify entity @e[type=item,tag=gen.new_item,distance=..1,limit=1] Item set from storage gen:core give_item
execute at @s run execute if entity @s[type=player] run data modify entity @e[type=item,tag=gen.new_item,distance=..1,limit=1] Owner set from entity @s UUID
execute at @s run tag @e[type=item,tag=gen.new_item,distance=..1] remove gen.new_item