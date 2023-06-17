execute if score .global tungsten.uid.offhand matches -2..-1 run scoreboard players set .global tungsten.uid.offhand 0
execute store result score .new tungsten.uid.offhand store result storage tungsten:player Item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.luck",UUID:[I;12,42069,0,11]}].Amount double 0.000000000001 run scoreboard players add .global tungsten.uid.offhand 1
item modify entity @s weapon.offhand tungsten:replace_tags
