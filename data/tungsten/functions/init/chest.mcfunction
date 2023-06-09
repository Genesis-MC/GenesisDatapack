scoreboard players add .global tungsten.uid.chest 1
execute if score .global tungsten.uid.chest matches -1..0 run scoreboard players set .global tungsten.uid.chest 1
item replace block 420692 0 694202 container.0 from entity @s armor.chest
execute store result block 420692 0 694202 Items[0].tag.AttributeModifiers[{AttributeName: "minecraft:generic.luck", UUID: [I; 12, 42069, 0, 13]}].Amount double 0.000000000001 run scoreboard players get .global tungsten.uid.chest
item replace entity @s armor.chest from block 420692 0 694202 container.0
scoreboard players operation .new tungsten.uid.chest = .global tungsten.uid.chest
