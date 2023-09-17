
scoreboard players add @s gen.profession.mineralogy.growth_level 1

execute if score @s gen.profession.mineralogy.growth_level matches 1 run setblock ~ ~1 ~ small_amethyst_bud
execute if score @s gen.profession.mineralogy.growth_level matches 2 run setblock ~ ~1 ~ medium_amethyst_bud
execute if score @s gen.profession.mineralogy.growth_level matches 3 run setblock ~ ~1 ~ large_amethyst_bud
execute if score @s gen.profession.mineralogy.growth_level matches 4 run setblock ~ ~1 ~ amethyst_cluster

