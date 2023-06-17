execute if score .global tungsten.uid.head matches -2..-1 run scoreboard players set .global tungsten.uid.head 0
execute store result score .new tungsten.uid.head store result storage tungsten:player Item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.luck",UUID:[I;12,42069,0,12]}].Amount double 0.000000000001 run scoreboard players add .global tungsten.uid.head 1
item modify entity @s armor.head tungsten:replace_tags
