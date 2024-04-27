#1 : -5 -20%
#2 : -4 -15%
#3 : -2 -10%
#4 : -1 -5%
#5 : 0
#6 : +3 +5%
#7 : +5 +10%
#8 : +7 +15%
#9 : +9 +20%
#10 : +10 +25%

execute if score @s gen.biome_difficulty matches 1 run scoreboard players set #biome_diff_percentage gen.temp -20
execute if score @s gen.biome_difficulty matches 2 run scoreboard players set #biome_diff_percentage gen.temp -15
execute if score @s gen.biome_difficulty matches 3 run scoreboard players set #biome_diff_percentage gen.temp 10
execute if score @s gen.biome_difficulty matches 4 run scoreboard players set #biome_diff_percentage gen.temp 5
execute if score @s gen.biome_difficulty matches 5 run scoreboard players set #biome_diff_percentage gen.temp 0
execute if score @s gen.biome_difficulty matches 6 run scoreboard players set #biome_diff_percentage gen.temp 3
execute if score @s gen.biome_difficulty matches 7 run scoreboard players set #biome_diff_percentage gen.temp 5
execute if score @s gen.biome_difficulty matches 8 run scoreboard players set #biome_diff_percentage gen.temp 10
execute if score @s gen.biome_difficulty matches 9 run scoreboard players set #biome_diff_percentage gen.temp 14
execute if score @s gen.biome_difficulty matches 10 run scoreboard players set #biome_diff_percentage gen.temp 18