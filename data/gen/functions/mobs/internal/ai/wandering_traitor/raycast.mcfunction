scoreboard players remove #length gen.temp 1
execute as @e[type=minecraft:wandering_trader,dx=0,limit=1] at @s positioned ~-0.99 ~ ~-0.99 if entity @s[dx=0] run function gen:mobs/internal/ai/wandering_traitor/found
execute if score #length gen.temp matches 1.. positioned ^ ^ ^0.25 run function gen:mobs/internal/ai/wandering_traitor/raycast