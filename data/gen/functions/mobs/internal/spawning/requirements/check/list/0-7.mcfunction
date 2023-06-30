execute store success score #continue_tree gen.temp run data modify storage gen:mobs current_item set from storage gen:mobs check_requirements[0]
execute if score #continue_tree gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/loop
execute if score #continue_tree gen.temp matches 1 store success score #continue_tree gen.temp run data modify storage gen:mobs current_item set from storage gen:mobs check_requirements[1]
execute if score #continue_tree gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/loop
execute if score #continue_tree gen.temp matches 1 store success score #continue_tree gen.temp run data modify storage gen:mobs current_item set from storage gen:mobs check_requirements[2]
execute if score #continue_tree gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/loop
execute if score #continue_tree gen.temp matches 1 store success score #continue_tree gen.temp run data modify storage gen:mobs current_item set from storage gen:mobs check_requirements[3]
execute if score #continue_tree gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/loop
execute if score #continue_tree gen.temp matches 1 store success score #continue_tree gen.temp run data modify storage gen:mobs current_item set from storage gen:mobs check_requirements[4]
execute if score #continue_tree gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/loop
execute if score #continue_tree gen.temp matches 1 store success score #continue_tree gen.temp run data modify storage gen:mobs current_item set from storage gen:mobs check_requirements[5]
execute if score #continue_tree gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/loop
execute if score #continue_tree gen.temp matches 1 store success score #continue_tree gen.temp run data modify storage gen:mobs current_item set from storage gen:mobs check_requirements[6]
execute if score #continue_tree gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/loop
execute if score #continue_tree gen.temp matches 1 store success score #continue_tree gen.temp run data modify storage gen:mobs current_item set from storage gen:mobs check_requirements[7]
execute if score #continue_tree gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/loop