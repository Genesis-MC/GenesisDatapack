# most wonky fix i had in mind
scoreboard players set #success gen.temp 0

execute in minecraft:overworld run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 with structure_void 1
execute in minecraft:overworld run loot replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 mine ~ ~-1 ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
#tellraw @p ["storage:",{"nbt":"read[-1].requirements.block","storage": "gen:mobs","color":"dark_blue"}]
execute in minecraft:overworld store success score #bool gen.temp run data modify storage gen:mobs read[-1].requirements.block set from entity 0001e4dd-0000-ca49-0002-425300000000 item.id
execute if score #bool gen.temp matches 0 run scoreboard players set #success gen.temp 1
#tellraw @p ["entity:",{"nbt":"item.id","entity": "0001e4dd-0000-ca49-0002-425300000000","color":"dark_blue"}]
#tellraw @p ["storage:",{"nbt":"read[-1].name","storage": "gen:mobs","color":"red"}]
#tellraw @p ["exact:",{"score":{"name": "#exact","objective": "gen.temp"},"color":"yellow"}]
#tellraw @p ["min:",{"score":{"name": "#min","objective": "gen.temp"},"color":"blue"}]
#tellraw @p ["max:",{"score":{"name": "#max","objective": "gen.temp"},"color":"aqua"}]

