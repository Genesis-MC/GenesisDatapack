function gen:core/internal/time/tick
execute as @e[type=minecraft:item,tag=!gen.tracked_item] at @s run function gen:core/internal/item/call_on_item