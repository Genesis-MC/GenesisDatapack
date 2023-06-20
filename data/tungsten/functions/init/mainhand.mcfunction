execute if score .global tungsten.uid.mainhand matches -2..-1 run scoreboard players set .global tungsten.uid.mainhand 0
execute store result score .new tungsten.uid.mainhand store result storage tungsten:player Item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.luck",UUID:[I;12,42069,0,10]}].Amount double 0.000000000001 run scoreboard players add .global tungsten.uid.mainhand 1
item modify entity @s weapon.mainhand tungsten:merge_tags
