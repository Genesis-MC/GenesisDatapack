scoreboard players set @s gen.crops.mined_sunflower 1
execute as @e[type=item_display,distance=..4,tag=gen.crops.crop_entity,predicate=gen:crops/mined_crop_block_configuration] at @s run function gen:crops/internal/mine/get_mined