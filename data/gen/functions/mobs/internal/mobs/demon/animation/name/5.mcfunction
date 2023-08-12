data modify entity @s HandItems[].tag.gen.SavedMobName set value '{"translate":"genesis.mobs.demon.animation.5"}'
execute store result score #bossbars.value gen.temp run data get entity @s Health 0.625
function gen:bossbars/internal/value/root
tp @s ~ ~ ~ facing entity @e[tag=spectate,limit=1] feet
execute as @a[tag=gen.mobs.demon.spectators] run spectate @e[tag=spectate,limit=1] @s
playsound minecraft:entity.allay.death master @a[distance=..16] ~ ~ ~ 1 0.5
function gen:mobs/internal/name_display/display