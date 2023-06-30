data modify entity @s NoAI set value 1b
summon minecraft:armor_stand ^ ^ ^1 {Invisible:1b,NoGravity:1b,Tags:["spectate","new"]}
execute store result score #bossbars.value gen.temp run data get entity @s Health 0
function gen:bossbars/internal/value/root
execute positioned as @e[tag=spectate,tag=new,limit=1] run tp @e[tag=spectate,tag=new,limit=1] ~ ~1.5 ~ facing entity @s feet
tag @e[tag=spectate,tag=new] remove new

execute as @a[distance=..8] run tag @s add gen.mobs.demon.spectators
execute as @a[tag=gen.mobs.demon.spectators] run function gen:utils/save_gamemode/spectator
execute as @a[tag=gen.mobs.demon.spectators] run spectate @e[tag=spectate,limit=1] @s
effect give @a[tag=gen.mobs.demon.spectators] darkness 8 1 true



tp @s ~ ~ ~ facing entity @e[tag=spectate,limit=1] feet
execute as @a[tag=gen.mobs.demon.spectators] run spectate @e[tag=spectate,limit=1] @s
data modify entity @s HandItems[].tag.gen.SavedMobName set value '{"translate":"genesis.mobs.demon.animation.0"}'
playsound minecraft:entity.allay.death master @a[distance=..16] ~ ~ ~ 1 2
function gen:mobs/internal/name_display/display