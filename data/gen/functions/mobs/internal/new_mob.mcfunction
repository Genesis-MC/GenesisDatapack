execute if data entity @s[tag=!NoCEM] CustomName run tag @s[nbt=!{CustomName:''}] add hasCEM

execute if entity @s[tag=!gen.mobs.show_name,tag=!hasCEM] run function gen:mobs/internal/name_display/init
execute if entity @s[tag=!gen.mobs.show_name,tag=hasCEM] run function gen:mobs/internal/name_display/cem/init
tag @s add gen.mobs.show_name
tag @s add gen.tracked