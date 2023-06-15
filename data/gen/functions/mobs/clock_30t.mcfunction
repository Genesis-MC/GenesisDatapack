# will be configureable later
execute at @a as @e[tag=gen.mobs.show_name,tag=!gen.mobs.name_hidden,distance=16..] run function gen:mobs/internal/hide_name
execute at @a as @e[tag=gen.mobs.show_name,tag=gen.mobs.name_hidden,distance=..15.99] run function gen:mobs/internal/show_name
schedule function gen:mobs/clock_30t 30t replace