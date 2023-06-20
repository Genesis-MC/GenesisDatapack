execute if score .global tungsten.uid.chest matches -2..-1 run scoreboard players set .global tungsten.uid.chest 0
execute store result score .new tungsten.uid.chest store result storage tungsten:player Item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.luck",UUID:[I;12,42069,0,13]}].Amount double 0.000000000001 run scoreboard players add .global tungsten.uid.chest 1
item modify entity @s armor.chest tungsten:merge_tags
