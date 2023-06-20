execute if score .global tungsten.uid.legs matches -2..-1 run scoreboard players set .global tungsten.uid.legs 0
execute store result score .new tungsten.uid.legs store result storage tungsten:player Item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.luck",UUID:[I;12,42069,0,14]}].Amount double 0.000000000001 run scoreboard players add .global tungsten.uid.legs 1
item modify entity @s armor.legs tungsten:merge_tags
