# this was made by HereAfterDestruction
# you can claim this function as your own work if you want
# it important this function is the first since it deleted any tags
function gen:mobs/internal/calc/level
tag @s add gen.tracked
execute if data entity @s[tag=!gen.mobs.custom_mob] CustomName run tag @s[nbt=!{CustomName:''}] add hasCEM
tag @s[tag=!hasCEM] add gen.mobs.show_name

execute if entity @s run function gen:mobs/internal/name_display/init
#execute if entity @s[tag=hasCEM] run function gen:mobs/internal/name_display/cem/init