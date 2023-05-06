
execute as @p[sort=nearest,limit=1] store result score @s worldTime run time query gametime
execute as @p[sort=nearest,limit=1] if score @s worldTime matches 1 run function gen:spawning/spawngenesis

#Timers
#scoreboard players add @e timer1 1
#scoreboard players add @e timer2 1
#execute as @e if score @s timer1 matches 100.. run scoreboard players set @s timer1 0
#execute as @e if score @s timer2 matches 100.. run scoreboard players set @s timer2 0

#execute as @e[type=armor_stand,tag=DummyBoi] at @s if score @s playerlvl matches 1 run particle flame ~ ~1 ~ 0 0 0 .1 1
#execute as @e[type=armor_stand,tag=DummyBoi] at @s if score @s playerlvl matches 2 run particle soul_fire_flame ~ ~1 ~ 0 0 0 .1 1
#execute as @e[type=armor_stand,tag=DummyBoi] at @s if score @s playerlvl matches 3 run particle soul ~ ~1 ~ 0 0 0 .1 1
#execute as @e[type=armor_stand,tag=DummyBoi] at @s if score @s playerlvl matches 4 run particle totem_of_undying ~ ~1 ~ 0 0 0 .1 1

execute as @e[tag=!identified,nbt={HurtTime:0s},type=!player,type=!armor_stand] at @s run function gen:misc/setmoblevel

