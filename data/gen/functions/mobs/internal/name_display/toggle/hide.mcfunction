data modify entity @s CustomNameVisible set value 0b
#execute if entity @s[tag=hasCEM] on passengers if entity @s[tag=gen.mobs.name_display_cloud] run kill @s
tag @s add gen.mobs.name_hidden
