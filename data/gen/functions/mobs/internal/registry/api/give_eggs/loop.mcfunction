execute in minecraft:overworld as 0001e4dd-0000-ca49-0002-425300000000 at @s run function gen:mobs/internal/registry/api/give_eggs/lore
#execute if data storage gen:mobs read[-1].summon_function run data modify storage 
execute store success score #bool gen.temp if data storage gen:mobs read[-1].entity_data.CustomName
execute store success score #base gen.temp if data storage gen:mobs read[-1].base_entity
execute if score #bool gen.temp matches 0 if score #base gen.temp matches 0 run loot spawn ~ ~ ~ loot gen:mobs/format/egg_unnamed
execute if score #bool gen.temp matches 1 if score #base gen.temp matches 0 run loot spawn ~ ~ ~ loot gen:mobs/format/egg_named

execute if score #bool gen.temp matches 0 if score #base gen.temp matches 1 run loot spawn ~ ~ ~ loot gen:mobs/format/egg_unnamed_based
execute if score #bool gen.temp matches 1 if score #base gen.temp matches 1 run loot spawn ~ ~ ~ loot gen:mobs/format/egg_named_based

data remove storage gen:mobs read[-1]
execute if data storage gen:mobs read[0] run function gen:mobs/internal/registry/api/give_eggs/loop
