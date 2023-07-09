execute as @e[tag=try_spawn,limit=1] at @s run function gen:mobs/internal/spawning/custom_mob/root
execute as @e[type=!#gen:mobs/dont_show_name,tag=!gen.tracked] at @s run function gen:mobs/internal/track
#execute as @e[tag=gen.mobs.show_name] run function gen:mobs/internal/is_hurt