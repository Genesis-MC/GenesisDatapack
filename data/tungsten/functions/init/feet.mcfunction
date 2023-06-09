scoreboard players add .global tungsten.uid.feet 1
execute if score .global tungsten.uid.feet matches -1..0 run scoreboard players set .global tungsten.uid.feet 1
item replace block 420692 0 694202 container.0 from entity @s armor.feet
execute store result block 420692 0 694202 Items[0].tag.AttributeModifiers[{AttributeName: "minecraft:generic.luck", UUID: [I; 12, 42069, 0, 15]}].Amount double 0.000000000001 run scoreboard players get .global tungsten.uid.feet
item replace entity @s armor.feet from block 420692 0 694202 container.0
scoreboard players operation .new tungsten.uid.feet = .global tungsten.uid.feet
