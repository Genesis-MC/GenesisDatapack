# most wonky fix i had in mind

item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 with structure_void
loot replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 mine ~ ~-1 ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
execute store success score #bool gen.temp run data modify storage gen:mobs current_item.requirements.block set from entity 0001e4dd-0000-ca49-0002-425300000000 item.id
#item replace block 160 -64 113 container.0 with structure_void
#loot replace block 160 -64 113 container.0 mine ~ ~-1 ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
#execute store success score #bool gen.temp run data modify storage gen:mobs current_item.requirements.block set from block 160 -64 113 Items[0].id

execute store success score #success gen.temp if score #bool gen.temp matches 0
#tellraw @p ["entity:",{"nbt":"item.id","entity": "0001e4dd-0000-ca49-0002-425300000000","color":"dark_blue"}]
#tellraw @p ["storage:",{"nbt":"current_item.name","storage": "gen:mobs","color":"red"}]
#tellraw @p ["exact:",{"score":{"name": "#exact","objective": "gen.temp"},"color":"yellow"}]
#tellraw @p ["min:",{"score":{"name": "#min","objective": "gen.temp"},"color":"blue"}]
#tellraw @p ["max:",{"score":{"name": "#max","objective": "gen.temp"},"color":"aqua"}]

