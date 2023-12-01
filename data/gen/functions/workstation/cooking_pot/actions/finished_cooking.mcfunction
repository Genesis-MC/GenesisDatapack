data modify storage gen:temp current_recipe set from entity @s data.current_recipe
execute store result score #xp gen.professions run data get storage gen:temp current_recipe.xp
execute if data storage gen:temp current_recipe.xp as @p[distance=..32] run function gen:professions/cooking/api/xp/apply

execute if data storage gen:temp current_recipe.output_item run data modify storage gen:core drop_item set from storage gen:temp current_recipe.output_item
execute if data storage gen:temp current_recipe.output_item run function gen:core/api/item/drop

execute if data storage gen:temp {current_recipe:"null"} run loot spawn ~ ~ ~ loot gen:workstation/cooking_pot/failure
execute if data storage gen:temp current_recipe.loot_table run function gen:workstation/cooking_pot/internal/drop_loot_table

execute if data entity @s data{current_recipe:"null"} run playsound minecraft:entity.cat.death block @a[distance=..32] ~ ~ ~ 10 0
execute unless data entity @s data{current_recipe:"null"} run playsound block.note_block.bell block @a[distance=..32] ~ ~ ~ 1 1.2
execute unless data entity @s data{current_recipe:"null"} run playsound entity.player.levelup block @a[distance=..32] ~ ~ ~ 1 0.5

data remove entity @s data.current_recipe