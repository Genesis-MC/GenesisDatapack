
execute as @e[tag=gen.mobs.spawn_egg,tag=!gen.mobs.show_name] at @s run function gen:mobs/internal/calc/level
execute as @e[tag=gen.mobs.spawn_egg,tag=!gen.mobs.show_name] at @s run function gen:mobs/internal/new_mob

schedule function gen:mobs/clock_20t 20t replace