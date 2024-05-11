
scoreboard players add @s gen.profession.mineralogy.growth_level 1

scoreboard players set #div gen.math 4
scoreboard players operation #stage1 gen.math = @s gen.profession.mineralogy.growth_req
scoreboard players operation #stage1 gen.math /= #div gen.math

scoreboard players set #div gen.math 2
scoreboard players operation #stage2 gen.math = @s gen.profession.mineralogy.growth_req
scoreboard players operation #stage2 gen.math /= #div gen.math

scoreboard players operation #stage3 gen.math = #stage1 gen.math
scoreboard players operation #stage3 gen.math += #stage2 gen.math

execute if score @s gen.profession.mineralogy.growth_level = #stage1 gen.math run setblock ~ ~1 ~ small_amethyst_bud
execute if score @s gen.profession.mineralogy.growth_level = #stage2 gen.math run setblock ~ ~1 ~ medium_amethyst_bud
execute if score @s gen.profession.mineralogy.growth_level = #stage3 gen.math run setblock ~ ~1 ~ large_amethyst_bud
execute if score @s gen.profession.mineralogy.growth_level = @s gen.profession.mineralogy.growth_req run setblock ~ ~1 ~ amethyst_cluster



