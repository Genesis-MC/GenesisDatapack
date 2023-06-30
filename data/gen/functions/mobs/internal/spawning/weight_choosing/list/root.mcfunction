scoreboard players set #tree gen.temp 0
data modify storage gen:mobs current_item set value {}
execute if data storage gen:mobs check_requirements[56] run scoreboard players set #tree gen.temp 8
execute if score #tree gen.temp matches 0 if data storage gen:mobs check_requirements[48] run scoreboard players set #tree gen.temp 7
execute if score #tree gen.temp matches 0 if data storage gen:mobs check_requirements[40] run scoreboard players set #tree gen.temp 6
execute if score #tree gen.temp matches 0 if data storage gen:mobs check_requirements[32] run scoreboard players set #tree gen.temp 5
execute if score #tree gen.temp matches 0 if data storage gen:mobs check_requirements[23] run scoreboard players set #tree gen.temp 4
execute if score #tree gen.temp matches 0 if data storage gen:mobs check_requirements[16] run scoreboard players set #tree gen.temp 3
execute if score #tree gen.temp matches 0 if data storage gen:mobs check_requirements[8] run scoreboard players set #tree gen.temp 2
execute if score #tree gen.temp matches 0 if data storage gen:mobs check_requirements[0] run scoreboard players set #tree gen.temp 1


execute if score #tree gen.temp matches 1.. run function gen:mobs/internal/spawning/requirements/check/list/0-7
execute if score #continue_tree gen.temp matches 1 if score #tree gen.temp matches 2.. run function gen:mobs/internal/spawning/requirements/check/list/8-15
execute if score #continue_tree gen.temp matches 1 if score #tree gen.temp matches 3.. run function gen:mobs/internal/spawning/requirements/check/list/16-23
execute if score #continue_tree gen.temp matches 1 if score #tree gen.temp matches 4.. run function gen:mobs/internal/spawning/requirements/check/list/24-31
execute if score #continue_tree gen.temp matches 1 if score #tree gen.temp matches 5.. run function gen:mobs/internal/spawning/requirements/check/list/32-39
execute if score #continue_tree gen.temp matches 1 if score #tree gen.temp matches 6.. run function gen:mobs/internal/spawning/requirements/check/list/40-47
execute if score #continue_tree gen.temp matches 1 if score #tree gen.temp matches 7.. run function gen:mobs/internal/spawning/requirements/check/list/48-55
execute if score #continue_tree gen.temp matches 1 if score #tree gen.temp matches 8.. run function gen:mobs/internal/spawning/requirements/check/list/56-63