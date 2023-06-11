particle soul_fire_flame ~ ~0.5 ~ 0 0 0 0 1 normal @a[tag=gen.dev.debug,distance=..32]

data modify storage gen:crops crop_data set from entity @s item.tag.genesis.crops.crop_data
function gen:crops/internal/grow/get_crop_definition

execute store result score #age gen.crops.calc run data get storage gen:crops crop_data.age 1
execute store result score #max_age gen.crops.calc run data get storage gen:crops crop_definition.growth.stages 1
scoreboard players remove #max_age gen.crops.calc 1
execute store result score #random.min gen.math run data get storage gen:crops crop_definition.growth.time.min 1
execute store result score #random.max gen.math run data get storage gen:crops crop_definition.growth.time.max 1

### skip to fully grown if the crop is loaded again after enough time ###
scoreboard players operation #heuristic_time gen.crops.calc = #max_age gen.crops.calc
scoreboard players operation #heuristic_time gen.crops.calc -= #age gen.crops.calc
scoreboard players operation #heuristic_time gen.crops.calc *= #random.max gen.math
scoreboard players operation #heuristic_time gen.crops.calc += @s gen.crops.growth_schedule

execute if score #heuristic_time gen.crops.calc <= .gametime gen.time run scoreboard players operation #new_age gen.crops.calc = #max_age gen.crops.calc
execute if score #heuristic_time gen.crops.calc <= .gametime gen.time run function gen:crops/internal/grow/go_to_new_age
execute if score #heuristic_time gen.crops.calc <= .gametime gen.time run return 0

scoreboard players operation #new_age gen.crops.calc = #age gen.crops.calc
function gen:crops/internal/grow/get_new_age
function gen:crops/internal/grow/go_to_new_age