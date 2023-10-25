
### Function is called every Minecraft day; Conditions are checked to increase player/world level
execute store result score .day gen.world run time query day
execute if score .day gen.world matches 2 run scoreboard players add .level gen.world 1
execute if score .day gen.world matches 3 run scoreboard players add .level gen.world 1
execute if score .day gen.world matches 5 run scoreboard players add .level gen.world 1
execute if score .day gen.world matches 7 run scoreboard players add .level gen.world 1
execute if score .day gen.world matches 10 run scoreboard players add .level gen.world 1
execute if score .day gen.world matches 14 run scoreboard players add .level gen.world 1
execute if score .day gen.world matches 18 run scoreboard players add .level gen.world 1
execute if score .day gen.world matches 22 run scoreboard players add .level gen.world 1
execute if score .day gen.world matches 26 run scoreboard players add .level gen.world 1
execute if score .day gen.world matches 32 run scoreboard players add .level gen.world 1

execute as @a run function gen:player_events/increase_level

schedule function gen:increase_levels 1d replace