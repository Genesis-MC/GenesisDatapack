schedule function gen:crops/internal/clock_4s 4s replace

execute as @a[tag=gen.dev.debug] at @s at @e[type=marker,tag=gen.crops.ticker_entity,distance=..32] run particle minecraft:block_marker cherry_sapling ~ ~ ~ 0 0 0 0 1 normal @s

execute at @a as @e[type=item_display,distance=..4,tag=gen.crops.crop_entity,predicate=!gen:crops/valid_crop_block_configuration] at @s run function gen:crops/internal/mine/invalid_block_configuration
execute at @a as @e[type=item_display,distance=..4,tag=gen.crops.crop_entity.check_for_farmland_trampling,predicate=!gen:crops/on_farmland] at @s run function gen:crops/internal/mine/invalid_block_configuration