function gen:mobs/internal/calc/level
tag @s add gen.tracked
execute if data entity @s[tag=!noCEM] CustomName run tag @s[nbt=!{CustomName:''}] add hasCEM
tag @s[tag=!hasCEM] add gen.mobs.show_name

execute if entity @s[tag=!hasCEM] run function gen:mobs/internal/name_display/init
execute if entity @s[tag=hasCEM] run function gen:mobs/internal/name_display/cem/init