
execute as @p[sort=nearest,limit=1] store result score @s worldTime run time query gametime
execute as @p[sort=nearest,limit=1] if score @s worldTime matches 1 run function gen:spawning/spawngenesis

#Timers
#scoreboard players add @e timer1 1
#scoreboard players add @e timer2 1
#execute as @e if score @s timer1 matches 100.. run scoreboard players set @s timer1 0
#execute as @e if score @s timer2 matches 100.. run scoreboard players set @s timer2 0

execute as @e[tag=!identified,nbt={HurtTime:0s},type=!player,type=!armor_stand] at @s run function gen:misc/setmoblevel
