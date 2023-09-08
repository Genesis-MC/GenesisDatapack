scoreboard players add @s gen.passive.awakened_shadows 1

execute if score @s gen.passive.awakened_shadows matches 4.. run scoreboard players set #div gen.math 20
execute if score @s gen.passive.awakened_shadows matches 4.. run scoreboard players operation #awakened_shadows_dmg gen.math = @s gen.stat.physical_power
execute if score @s gen.passive.awakened_shadows matches 4.. run scoreboard players operation #awakened_shadows_dmg gen.math /= #div gen.math
execute if score @s gen.passive.awakened_shadows matches 4.. store result storage gen:ability awakened_shadows.dmg int 1 run scoreboard players get #awakened_shadows_dmg gen.math

execute if score @s gen.passive.awakened_shadows matches 4.. at @s run particle smoke ~ ~1 ~ 0 0 0 0.1 20
execute if score @s gen.passive.awakened_shadows matches 4.. at @s as @e[distance=..5,limit=1,nbt={HurtTime:10s}] run function gen:ability/data/macros/single_target with storage gen:ability awakened_shadows
execute if score @s gen.passive.awakened_shadows matches 4.. run scoreboard players reset @s gen.passive.awakened_shadows