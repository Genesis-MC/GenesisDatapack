execute if score .global tungsten.uid.feet matches -2..-1 run scoreboard players set .global tungsten.uid.feet 0
execute store result score .new tungsten.uid.feet store result storage tungsten:player Item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.luck",UUID:[I;12,42069,0,15]}].Amount double 0.000000000001 run scoreboard players add .global tungsten.uid.feet 1
item modify entity @s armor.feet tungsten:merge_tags
