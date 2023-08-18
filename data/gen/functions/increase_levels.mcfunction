
### Function is called every Minecraft day; Conditions are checked to increase player/world level
execute store result score #worldtime gen.world_time run time query day

execute as @a run function gen:player_events/increase_level

schedule function gen:increase_levels 1d replace