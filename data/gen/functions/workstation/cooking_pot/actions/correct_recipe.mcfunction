data modify entity @s data.current_recipe set from storage gen:workstation cooking_pot.current_recipe

execute store result score @s gen.workstation.cooking_pot.ticking_time run data get storage gen:workstation cooking_pot.current_recipe.time
scoreboard players operation @s gen.workstation.cooking_pot.total_time = @s gen.workstation.cooking_pot.ticking_time

function gen:workstation/cooking_pot/internal/clear_pot