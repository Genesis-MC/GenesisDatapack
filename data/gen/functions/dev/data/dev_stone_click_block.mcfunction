execute if block ~ ~ ~ minecraft:sunflower[half=lower] if entity @e[type=item_display,tag=gen.crops.crop_entity,distance=..0.1,limit=1] run function gen:crops/api/clicked_by_dev_stone
execute if block ~ ~ ~ minecraft:moving_piston positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:sunflower[half=lower] if entity @e[type=item_display,tag=gen.crops.crop_entity,distance=..0.1,limit=1] run function gen:crops/api/clicked_by_dev_stone