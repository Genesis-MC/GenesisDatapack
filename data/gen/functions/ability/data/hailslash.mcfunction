#2.5% of Phys Pow as AOE Medium Dmg
scoreboard players set #div gen.math 40
scoreboard players operation #cleave_dmg gen.math = @s gen.stat.physical_power
scoreboard players operation #cleave_dmg gen.math /= #div gen.math
execute store result storage gen:ability cleave_dmg.dmg int 1 run scoreboard players get #cleave_dmg gen.math
function gen:ability/data/macros/aoe_medium with storage gen:ability cleave_dmg
execute as @e[distance=..5,tag=!ally,type=#gen:alive] run function gen:gear/internal/passives/frostbite
particle block frosted_ice ~ ~1 ~ 1 0 1 0 60

#8 sec cooldown
scoreboard players set .cooldown gen.ability 140