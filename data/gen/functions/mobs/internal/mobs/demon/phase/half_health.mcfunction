scoreboard players set @s gen.mobs.phases 1
execute positioned ~1 ~ ~2 run function gen:cheats/summon/nightmare_sword
execute positioned ~1 ~ ~-2 run function gen:cheats/summon/nightmare_sword
execute positioned ~-1 ~ ~2 run function gen:cheats/summon/nightmare_bow
execute positioned ~-1 ~ ~-2 run function gen:cheats/summon/nightmare_bow

playsound minecraft:entity.iron_golem.death master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.elder_guardian.curse master @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:entity.vex.death master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.allay.death master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.zombie.death master @a[distance=..16] ~ ~ ~ 1 0