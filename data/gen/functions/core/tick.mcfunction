function gen:core/internal/time/tick
execute as @e[type=item,tag=!gen.tracked_item] at @s run function gen:core/internal/item/call_on_item
execute as @a[scores={gen.item.use.warped_fungus_on_a_stick=1..}] at @s run function gen:core/data/item/use_warped_fungus_on_a_stick