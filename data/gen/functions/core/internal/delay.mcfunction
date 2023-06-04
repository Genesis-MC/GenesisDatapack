#Runs 4 times every second to mitigate lag

#Gives a mob a level and custom name
execute as @e[tag=!identified,nbt={HurtTime:0s},type=!player,type=!armor_stand] at @s run function gen:core/internal/setmoblevel

#Sets a custom mob's name as visible only if it is nearby a players
execute at @a as @e[distance=21..24,tag=identified,nbt={HurtTime:0s},type=!player,type=!armor_stand] run data modify entity @s CustomNameVisible set value 0b
execute at @a as @e[distance=..20,tag=identified,nbt={HurtTime:0s},type=!player,type=!armor_stand] run data modify entity @s CustomNameVisible set value 1b

schedule function gen:core/internal/delay 5t