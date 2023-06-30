execute store result score #Emeralds gen.temp run clear @p[tag=this] minecraft:emerald 0
execute store result score #EmeraldBlocks gen.temp run clear @p[tag=this] minecraft:emerald_block 0
scoreboard players operation #EmeraldBlocks gen.temp *= #9 gen.const
scoreboard players operation #Emeralds gen.temp += #EmeraldBlocks gen.temp
execute store result score #Difficulty gen.temp run difficulty
scoreboard players set #MaxEmeralds gen.player.stolen_emeralds 15
scoreboard players operation #MaxEmeralds gen.player.stolen_emeralds *= #Difficulty gen.temp
execute if score #Emeralds gen.temp >= #MaxEmeralds gen.player.stolen_emeralds run scoreboard players operation #Emeralds gen.temp = #MaxEmeralds gen.player.stolen_emeralds
scoreboard players operation #EmeraldsCleared gen.temp = #Emeralds gen.temp
tellraw @p[tag=this] {"score":{"name":"#Emeralds","objective":"gen.temp"}}
execute if predicate gen:randomizer/random50 if score #Emeralds gen.temp matches 1.. run scoreboard players remove #Emeralds gen.temp 1
execute if predicate gen:randomizer/random50 if score #Emeralds gen.temp matches 1.. run scoreboard players remove #Emeralds gen.temp 1
execute if predicate gen:randomizer/random50 if score #Emeralds gen.temp matches 1.. run scoreboard players remove #Emeralds gen.temp 1
execute if predicate gen:randomizer/random50 if score #Emeralds gen.temp matches 1.. run scoreboard players remove #Emeralds gen.temp 1
execute if predicate gen:randomizer/random50 if score #Emeralds gen.temp matches 1.. run scoreboard players remove #Emeralds gen.temp 1
execute if predicate gen:randomizer/random50 if score #Emeralds gen.temp matches 1.. run scoreboard players remove #Emeralds gen.temp 1
execute if predicate gen:randomizer/random50 if score #Emeralds gen.temp matches 1.. run scoreboard players remove #Emeralds gen.temp 1

scoreboard players operation @s gen.player.stolen_emeralds = #Emeralds gen.temp
execute as @p[tag=this] run function gen:mobs/internal/ai/wandering_traitor/clear
tellraw @p[tag=this] {"score":{"name":"#Emeralds","objective":"gen.temp"}}