tag @s add gen.crops.context_player
execute at @s rotated as @s anchored eyes positioned ^ ^ ^3 as @e[type=item,tag=!gen.tracked_item,nbt={Item:{id:"minecraft:sunflower"}}] at @s run function gen:crops/api/call_on_sunflower_item
tag @s remove gen.crops.context_player

advancement revoke @s only gen:crops/use_bone_meal