### test for broken crops each tick on creative mode players since items don't drop ###
execute as @a[predicate=gen:crops/test_crops_each_tick] at @s rotated as @s anchored eyes positioned ^ ^ ^3 if entity @e[type=item_display,distance=..4,tag=gen.crops.crop_entity,predicate=gen:crops/mined_crop_block_configuration,limit=1] run function gen:crops/internal/mine/creative_player_mine

scoreboard players reset @a[scores={gen.crops.mined_sunflower=1..}] gen.crops.mined_sunflower