
execute as @a if score @s killshep matches 1.. run say RIP!
execute as @a if score @s killshep matches 1.. run scoreboard players add @s playerlvl 1
execute as @a if score @s killshep matches 1.. run scoreboard players set @s killshep 0

execute as @e[type=armor_stand,tag=DummyBoi] at @s if score @s playerlvl matches 1 run particle flame ~ ~1 ~ 0 0 0 .1 1
execute as @e[type=armor_stand,tag=DummyBoi] at @s if score @s playerlvl matches 2 run particle soul_fire_flame ~ ~1 ~ 0 0 0 .1 1
execute as @e[type=armor_stand,tag=DummyBoi] at @s if score @s playerlvl matches 3 run particle soul ~ ~1 ~ 0 0 0 .1 1
execute as @e[type=armor_stand,tag=DummyBoi] at @s if score @s playerlvl matches 4 run particle totem_of_undying ~ ~1 ~ 0 0 0 .1 1

execute as @e[tag=!identified,nbt={HurtTime:10s}] at @s run function gen:misc/setmoblevel

