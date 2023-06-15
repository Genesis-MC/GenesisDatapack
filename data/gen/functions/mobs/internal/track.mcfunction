# this was made by HereAfterDestruction
# you can claim this function as your own work if you want
# it important this function is the first since it deleted any tags
function gen:mobs/internal/calc/level
# checks if the mob needs to be ticked
tag @s add gen.mobs.show_name

execute if entity @s[tag=gen.mobs.show_name] run function gen:mobs/internal/name_display/init
tag @s add gen.mobs.tracked