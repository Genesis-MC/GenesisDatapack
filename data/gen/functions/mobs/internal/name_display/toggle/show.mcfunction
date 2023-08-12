data modify entity @s CustomNameVisible set value 1b
#data modify entity @s[tag=!hasCEM] CustomNameVisible set value 1b
#execute if entity @s[predicate=!gen:mobs/is_ridden_by_cem_cloud,tag=hasCEM] run function gen:mobs/internal/name_display/cem/init
tag @s remove gen.mobs.name_hidden

