#4% of Phys Pow as AOE Short Dmg
scoreboard players set #div gen.math 25
scoreboard players operation #voidrend_dmg gen.math = @s gen.stat.physical_power
scoreboard players operation #voidrend_dmg gen.math /= #div gen.math
execute store result storage gen:ability voidrend.dmg int 1 run scoreboard players get #voidrend_dmg gen.math

playsound entity.enderman.teleport player @a ~ ~ ~
execute anchored eyes if block ^ ^ ^5 air if block ^ ^ ^4 air if block ^ ^ ^3 air if block ^ ^ ^2 air if block ^ ^ ^1 air run teleport @s ^ ^ ^5
execute anchored eyes unless block ^ ^ ^5 air if block ^ ^ ^4 air if block ^ ^ ^3 air if block ^ ^ ^2 air if block ^ ^ ^1 air run teleport @s ^ ^ ^4
execute anchored eyes unless block ^ ^ ^4 air if block ^ ^ ^3 air if block ^ ^ ^2 air if block ^ ^ ^1 air run teleport @s ^ ^ ^3
execute anchored eyes unless block ^ ^ ^3 air if block ^ ^ ^2 air if block ^ ^ ^1 air run teleport @s ^ ^ ^2
execute anchored eyes unless block ^ ^ ^2 air if block ^ ^ ^1 air run teleport @s ^ ^ ^1
function gen:ability/data/macros/aoe_short with storage gen:ability voidrend
particle crit ~ ~1 ~ 0.5 0 0.5 0 20

#Ferrous Shadows
execute if entity @s[advancements={gen:passive={voidbreach4=true}},tag=!gen.passive.ferrous_shadows,scores={gen.passive.ferrshadow_cd=0}] run function gen:gear/internal/passives/increase/ferrous_shadows
#4 sec cooldown
scoreboard players set .cooldown gen.ability 80