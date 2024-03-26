
scoreboard players operation @s tungsten.uid = .new tungsten.uid
execute store result score .new tungsten.uid.mainhand run attribute @s minecraft:generic.luck modifier value get c-0-a455-0-a 1000000000000.5
execute unless score .new tungsten.uid.mainhand = @s tungsten.uid.mainhand run function tungsten:swap/mainhand
#execute store result score .new tungsten.uid.offhand run attribute @s minecraft:generic.luck modifier value get c-0-a455-0-b 1000000000000.5
execute unless score .new tungsten.uid.offhand = @s tungsten.uid.offhand run function tungsten:swap/offhand
execute store result score .new tungsten.uid.head run attribute @s minecraft:generic.luck modifier value get c-0-a455-0-c 1000000000000.5
execute unless score .new tungsten.uid.head = @s tungsten.uid.head run function tungsten:swap/head
execute store result score .new tungsten.uid.chest run attribute @s minecraft:generic.luck modifier value get c-0-a455-0-d 1000000000000.5
execute unless score .new tungsten.uid.chest = @s tungsten.uid.chest run function tungsten:swap/chest
execute store result score .new tungsten.uid.legs run attribute @s minecraft:generic.luck modifier value get c-0-a455-0-e 1000000000000.5
execute unless score .new tungsten.uid.legs = @s tungsten.uid.legs run function tungsten:swap/legs
execute store result score .new tungsten.uid.feet run attribute @s minecraft:generic.luck modifier value get c-0-a455-0-f 1000000000000.5
execute unless score .new tungsten.uid.feet = @s tungsten.uid.feet run function tungsten:swap/feet
