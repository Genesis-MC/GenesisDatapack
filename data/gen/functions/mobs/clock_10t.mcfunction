# will be configureable later
kill @e[tag=gen.mobs.name_display_cloud,predicate=!gen:utils/is_riding] 
#execute as @e[tag=gen.mobs.show_name] run function gen:mobs/internal/is_hurt
schedule function gen:mobs/clock_10t 10t replace