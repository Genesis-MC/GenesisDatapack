# this was made by HereAfterDestruction
# you can claim this function as your own work if you want

# checks if the mob needs to be ticked
tag @s add gen.mobs.show_health


execute if entity @s[tag=gen.mobs.show_health] run function gen:mobs/internal/name_display/init
tag @s add gen.mobs.tracked