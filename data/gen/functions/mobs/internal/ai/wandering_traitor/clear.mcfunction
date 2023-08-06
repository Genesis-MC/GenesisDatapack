execute if score #EmeraldsCleared gen.temp matches 1.. store success score #cleared gen.temp run clear @s minecraft:emerald_block 1
execute if score #cleared gen.temp matches 1 run scoreboard players remove #EmeraldsCleared gen.temp 9
execute if score #EmeraldsCleared gen.temp matches 1.. store success score #cleared gen.temp run clear @s minecraft:emerald 1
execute if score #cleared gen.temp matches 1 run scoreboard players remove #EmeraldsCleared gen.temp 1
execute if score #EmeraldsCleared gen.temp matches 1.. run function gen:mobs/internal/ai/wandering_traitor/clear