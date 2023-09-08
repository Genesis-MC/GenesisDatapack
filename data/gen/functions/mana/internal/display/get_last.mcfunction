
scoreboard players operation #temp gen.math = .amount gen.math
execute if score #temp gen.math matches 1.. run scoreboard players add #temp gen.math 1
scoreboard players operation #temp gen.math *= #multiplyer gen.math
scoreboard players operation @s gen.mana.display += #temp gen.math
