execute store result score .new tungsten.uid run attribute @s generic.luck get 1000000000000
execute store result score .new tungsten.uid.offhand run attribute @s minecraft:generic.luck modifier value get 0000000c-0000-a455-0000-00000000000b 1000000000000
scoreboard players operation .new tungsten.uid += .new tungsten.uid.offhand
execute unless score .new tungsten.uid = @s tungsten.uid run function tungsten:tick/check
