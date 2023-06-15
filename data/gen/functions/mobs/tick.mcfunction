execute as @e[type=!#gen:mobs/dont_show_name,tag=!gen.mobs.tracked] run function gen:mobs/internal/track
#execute as @e[tag=gen.mobs.show_name] run function gen:mobs/internal/is_hurt