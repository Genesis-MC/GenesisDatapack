scoreboard players add .global tungsten.uid.head 1
execute if score .global tungsten.uid.head matches -1..0 run scoreboard players set .global tungsten.uid.head 1
item replace block 420692 0 694202 container.0 from entity @s armor.head
execute store result block 420692 0 694202 Items[0].tag.AttributeModifiers[{AttributeName: "minecraft:generic.luck", UUID: [I; 12, 42069, 0, 12]}].Amount double 0.000000000001 run scoreboard players get .global tungsten.uid.head
item replace entity @s armor.head from block 420692 0 694202 container.0
scoreboard players operation .new tungsten.uid.head = .global tungsten.uid.head
