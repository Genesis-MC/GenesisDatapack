execute in minecraft:overworld run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 with structure_void 1
execute in minecraft:overworld run loot replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 mine ~ ~-1 ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
execute in minecraft:overworld store success score #bool gen.temp run data modify storage gen:mobs read[-1].requirements.block set from entity 0001e4dd-0000-ca49-0002-425300000000 item.id
