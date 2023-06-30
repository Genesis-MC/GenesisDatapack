execute store result score #weight gen.temp run data get storage gen:mobs success[-1].weight
#tellraw @a[tag=gen.dev.debug.all] ["[wieght choosing] all success ",{"nbt":"success[].name","storage": "gen:mobs","color":"red"}]
#tellraw @a[tag=gen.dev.debug.all] ["[wieght choosing] weight ",{"nbt":"success[-1].weight","storage": "gen:mobs","color":"red"}]
#tellraw @a[tag=gen.dev.debug.all] ["[wieght choosing] total ",{"score":{"name":"#current_total_weight","objective": "gen.temp"},"color":"blue"}]
#tellraw @a[tag=gen.dev.debug.all] ["[wieght choosing] random ",{"score":{"name":"#random.value","objective": "gen.math"},"color":"aqua"}]
# w = 100
# w = 10
# r = 110
# if r < w 
execute if score #weight gen.temp >= #random.value gen.math run function gen:mobs/internal/spawning/success
scoreboard players operation #random.value gen.math -= #weight gen.temp
data remove storage gen:mobs success[-1]
#execute if score #weight gen.temp >= #random.value gen.math run return -1
execute if score #w_loop gen.temp matches 1 if score #random.value gen.math matches 1.. unless score #weight gen.temp matches 0 run function gen:mobs/internal/spawning/weight_choosing