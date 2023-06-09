scoreboard players operation @s tungsten.uid = .new tungsten.uid
data modify storage tungsten:player Inventory set from entity @s Inventory
execute store result score .new tungsten.uid.mainhand run attribute @s minecraft:generic.luck modifier value get 0000000c-0000-a455-0000-00000000000a 1000000000000
execute unless score .new tungsten.uid.mainhand = @s tungsten.uid.mainhand run function tungsten:swap/mainhand
execute unless score .new tungsten.uid.offhand = @s tungsten.uid.offhand run function tungsten:swap/offhand
execute store result score .new tungsten.uid.head run attribute @s minecraft:generic.luck modifier value get 0000000c-0000-a455-0000-00000000000c 1000000000000
execute unless score .new tungsten.uid.head = @s tungsten.uid.head run function tungsten:swap/head
execute store result score .new tungsten.uid.chest run attribute @s minecraft:generic.luck modifier value get 0000000c-0000-a455-0000-00000000000d 1000000000000
execute unless score .new tungsten.uid.chest = @s tungsten.uid.chest run function tungsten:swap/chest
execute store result score .new tungsten.uid.legs run attribute @s minecraft:generic.luck modifier value get 0000000c-0000-a455-0000-00000000000e 1000000000000
execute unless score .new tungsten.uid.legs = @s tungsten.uid.legs run function tungsten:swap/legs
execute store result score .new tungsten.uid.feet run attribute @s minecraft:generic.luck modifier value get 0000000c-0000-a455-0000-00000000000f 1000000000000
execute unless score .new tungsten.uid.feet = @s tungsten.uid.feet run function tungsten:swap/feet
