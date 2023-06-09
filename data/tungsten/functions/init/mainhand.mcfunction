scoreboard players add .global tungsten.uid.mainhand 1
execute if score .global tungsten.uid.mainhand matches -1..0 run scoreboard players set .global tungsten.uid.mainhand 1
item replace block 420692 0 694202 container.0 from entity @s weapon.mainhand
execute store result block 420692 0 694202 Items[0].tag.AttributeModifiers[{AttributeName: "minecraft:generic.luck", UUID: [I; 12, 42069, 0, 10]}].Amount double 0.000000000001 run scoreboard players get .global tungsten.uid.mainhand
item replace entity @s weapon.mainhand from block 420692 0 694202 container.0
scoreboard players operation .new tungsten.uid.mainhand = .global tungsten.uid.mainhand
