scoreboard players set #current gen.temp 0
$execute if data storage gen:temp build_recipe.out[{key:$(next)}] store result score #current gen.temp run data get storage gen:temp build_recipe.out[{key:$(next)}].item.Count 1
execute store success score #exists gen.temp if score #current gen.temp matches 1..
execute if score #exists gen.temp matches 0 store result score #count gen.temp run data get storage gen:temp build_recipe.iter[0].Count 1
scoreboard players operation #recipe.ingredients gen.workstation += #count gen.temp
scoreboard players operation #current gen.temp += #count gen.temp

$execute if score #exists gen.temp matches 1 store result storage gen:temp build_recipe.out[{key:$(next)}].item.Count int 1 run scoreboard players get #current gen.temp
$execute if score #exists gen.temp matches 0 run data modify storage gen:temp build_recipe.out append value {key:$(next), item:$(next)}
execute if score #exists gen.temp matches 0 store result storage gen:temp build_recipe.out[-1].item.Count int 1 run scoreboard players get #current gen.temp
execute if score #exists gen.temp matches 0 run data remove storage gen:temp build_recipe.out[-1].item.tags

data remove storage gen:temp build_recipe.iter[0]
data remove storage gen:temp build_recipe.iter[0].Slot
data modify storage gen:temp build_recipe.next set from storage gen:temp build_recipe.iter[0]
data remove storage gen:temp build_recipe.next.Count
execute store result storage gen:temp build_recipe.next.tags int 1 run data get storage gen:temp build_recipe.next.tag
execute if data storage gen:temp build_recipe.iter[0] run function gen:workstation/internal/recipe/build_shapeless/loop with storage gen:temp build_recipe