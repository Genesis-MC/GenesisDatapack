execute as @e[type=!#gen:mobs/dont_show_name,tag=!gen.tracked] at @s run function gen:mobs/internal/track
execute as @e[tag=gen.try_spawn,limit=1] at @s run function gen:mobs/internal/spawning/custom_mob/root
execute as @e[scores={gen.mobs.name_display_timer=1..}] at @s run function gen:mobs/internal/name_display/timer

execute as @e[tag=gen.passenger_cosmetic] unless predicate gen:utils/is_riding run kill @s