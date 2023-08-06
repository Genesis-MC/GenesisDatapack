data modify entity @s NoAI set value 0b
data modify entity @s HandItems[].tag.gen.SavedMobName set value '{"translate":"genesis.mobs.demon.animation.8"}'
execute store result score #bossbars.value gen.temp run data get entity @s Health 1
function gen:bossbars/internal/value/root
execute as @a[tag=gen.mobs.demon.spectators,distance=..8] run function gen:utils/save_gamemode/set
kill @e[tag=spectate,type=armor_stand,distance=..2]
tag @a[distance=..8] remove gen.mobs.demon.spectators
playsound minecraft:entity.elder_guardian.curse master @a[distance=..16] ~ ~ ~ 1 2
function gen:mobs/internal/name_display/display