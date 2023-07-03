execute store result score .new tungsten.uid run attribute @s generic.luck get 1000000000000.5
execute store result score .new tungsten.uid.offhand run attribute @s minecraft:generic.luck modifier value get c-0-a455-0-b 1000000000000.5
execute if score .new tungsten.uid matches 2147483647 run function tungsten:tick/check
execute if score .new tungsten.uid matches 2147483647 run return 0
scoreboard players operation .new tungsten.uid += .new tungsten.uid.offhand
execute unless score .new tungsten.uid = @s tungsten.uid run function tungsten:tick/check
