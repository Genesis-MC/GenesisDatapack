####################
# Clears the crafting input
####################

tag @s remove smithed.crafter.assembled_output
execute as @a[distance=..12, sort=nearest, tag=smithed.inside_crafter] run function smithed.crafter:v0.2.0/block/table/crafting/output/cursor_check/main
execute if entity @s[tag=!smithed.no_shift_click] unless entity @a[distance=..12, sort=nearest, tag=smithed.inside_crafter, tag=!smithed.shift_clicked] run function smithed.crafter:v0.2.0/block/table/crafting/output/shift_click/main

function smithed.crafter:v0.2.0/block/table/crafting/output/clear_input/test

## Genesis specific features for keeping the mallet in the crafting grid for mineralogy profesion
execute if score @s gen.temp matches 1 run loot replace block ~ ~ ~ container.12 loot gen:gear/tools/novice_mallet
execute if score @s gen.temp matches 2 run loot replace block ~ ~ ~ container.12 loot gen:gear/tools/apprentice_mallet
execute if score @s gen.temp matches 3 run loot replace block ~ ~ ~ container.12 loot gen:gear/tools/journeyman_mallet
execute if score @s gen.temp matches 4 run loot replace block ~ ~ ~ container.12 loot gen:gear/tools/expert_mallet
execute if score @s gen.temp matches 5 run loot replace block ~ ~ ~ container.12 loot gen:gear/tools/master_mallet
scoreboard players set @s gen.temp 0

data modify storage smithed.crafter:input flags set value ["consume_tools"]
