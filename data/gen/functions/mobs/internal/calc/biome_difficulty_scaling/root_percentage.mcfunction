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

execute if score @s gen.biome_difficulty matches 1 run scoreboard players set #biome_diff_percentage gen.temp 80
execute if score @s gen.biome_difficulty matches 2 run scoreboard players set #biome_diff_percentage gen.temp 85
execute if score @s gen.biome_difficulty matches 3 run scoreboard players set #biome_diff_percentage gen.temp 90
execute if score @s gen.biome_difficulty matches 4 run scoreboard players set #biome_diff_percentage gen.temp 95
execute if score @s gen.biome_difficulty matches 5 run scoreboard players set #biome_diff_percentage gen.temp 100
execute if score @s gen.biome_difficulty matches 6 run scoreboard players set #biome_diff_percentage gen.temp 105
execute if score @s gen.biome_difficulty matches 7 run scoreboard players set #biome_diff_percentage gen.temp 110
execute if score @s gen.biome_difficulty matches 8 run scoreboard players set #biome_diff_percentage gen.temp 115
execute if score @s gen.biome_difficulty matches 9 run scoreboard players set #biome_diff_percentage gen.temp 120
execute if score @s gen.biome_difficulty matches 10 run scoreboard players set #biome_diff_percentage gen.temp 125