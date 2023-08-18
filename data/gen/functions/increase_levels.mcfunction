
### Function is called every Minecraft day; Conditions are checked to increase player/world level
execute store result score #worldtime gen.world_time run time query day
execute if score #worldtime gen.world_time matches 2 run scoreboard players add #worldlvltracker gen.world_lvl 1
execute if score #worldtime gen.world_time matches 3 run scoreboard players add #worldlvltracker gen.world_lvl 1
execute if score #worldtime gen.world_time matches 5 run scoreboard players add #worldlvltracker gen.world_lvl 1
execute if score #worldtime gen.world_time matches 7 run scoreboard players add #worldlvltracker gen.world_lvl 1
execute if score #worldtime gen.world_time matches 10 run scoreboard players add #worldlvltracker gen.world_lvl 1
execute if score #worldtime gen.world_time matches 14 run scoreboard players add #worldlvltracker gen.world_lvl 1
execute if score #worldtime gen.world_time matches 18 run scoreboard players add #worldlvltracker gen.world_lvl 1
execute if score #worldtime gen.world_time matches 22 run scoreboard players add #worldlvltracker gen.world_lvl 1
execute if score #worldtime gen.world_time matches 26 run scoreboard players add #worldlvltracker gen.world_lvl 1
execute if score #worldtime gen.world_time matches 32 run scoreboard players add #worldlvltracker gen.world_lvl 1

execute as @a run function gen:player_events/increase_level

schedule function gen:increase_levels 1d replace