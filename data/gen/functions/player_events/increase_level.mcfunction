
## Function is called every Minecraft day by gen:increase_level; Checks conditions and increases player level
execute if score @s gen.mobs.level matches 50.. run return 0
execute if score @s gen.mobs.level matches ..15 run scoreboard players add @s gen.mobs.level 1

#Calc Playtime
scoreboard players set #div gen.math 24000
scoreboard players operation #days_played gen.math = @s gen.player.play_time
scoreboard players operation #days_played gen.math /= #div gen.math
#Calc Time Alive
scoreboard players operation #days_alive gen.math = @s gen.player.time_alive
scoreboard players operation #days_alive gen.math /= #div gen.math

execute store result score #rng gen.math run loot spawn ~ ~ ~ loot gen:randomizers/random20
execute if score #rng gen.math matches 1 if score #days_played gen.math matches 1.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 2 if score #days_played gen.math matches 3.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 3 if score #days_played gen.math matches 10.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 4 if score #days_alive gen.math matches 1.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 5 if score #days_alive gen.math matches 3.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 6 if score #days_alive gen.math matches 10.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 7 if score @s gen.player.damage_dealt matches 100.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 8 if score @s gen.player.damage_dealt matches 1000.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 9 if score @s gen.player.damage_dealt matches 5000.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 10 if score @s gen.player.damage_taken matches 50.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 11 if score @s gen.player.damage_taken matches 500.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 12 if score @s gen.player.damage_taken matches 2500.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 13 if score @s gen.player.mobs_killed matches 50.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 14 if score @s gen.player.mobs_killed matches 500.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 15 if score @s gen.player.mobs_killed matches 1000.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 16 if score @s gen.player.mobs_killed matches 3000.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 17 if score @s gen.player.fish_caught matches 50.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 18 if score @s gen.player.animals_bred matches 50.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 19 if score @s gen.player.raids_won matches 1.. run scoreboard players add @s gen.mobs.level 1
execute if score #rng gen.math matches 20 if score @s gen.player.items_enchanted matches 5.. run scoreboard players add @s gen.mobs.level 1