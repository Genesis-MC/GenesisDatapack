scoreboard players set #div gen.math 20
scoreboard players operation #cleave_dmg gen.math = @s gen.stat.physical_power
scoreboard players operation #cleave_dmg gen.math /= #div gen.math
execute store result storage gen:ability cleave_dmg.dmg int 1 run scoreboard players get #cleave_dmg gen.math
function gen:ability/data/cleave_damage with storage gen:ability cleave_dmg 
particle sweep_attack ~ ~1 ~ 1 0 1 0 20

#8 sec cooldown
scoreboard players set .cooldown gen.ability 160