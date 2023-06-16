scoreboard players set #can_bonemeal gen.crops.calc 0
execute if score #can_bonemeal gen.crops.calc matches 0 run function gen:crops/internal/bone_meal/cannot_bonemeal
execute if score #can_bonemeal gen.crops.calc matches 0 run return 0

data modify storage gen:crops crop_data set from entity @s item.tag.genesis.crops.crop_data
function gen:crops/internal/grow/get_crop_definition

execute store result score #age gen.crops.calc run data get storage gen:crops crop_data.age 1
execute store result score #random.min gen.math run data get storage gen:crops crop_definition.bone_meal.stages.min 1
execute store result score #random.max gen.math run data get storage gen:crops crop_definition.bone_meal.stages.max 1
function gen:math/api/random/uniform_range
execute if score #random.value gen.math matches ..-1 run scoreboard players set #random.value gen.math 0
execute store result score #max_age gen.crops.calc run data get storage gen:crops crop_definition.growth.stages 1
scoreboard players remove #max_age gen.crops.calc 1

scoreboard players operation #new_age gen.crops.calc = #age gen.crops.calc
scoreboard players operation #new_age gen.crops.calc += #random.value gen.math
scoreboard players operation #new_age gen.crops.calc < #max_age gen.crops.calc

execute if score #age gen.crops.calc = #max_age gen.crops.calc run function gen:crops/internal/bone_meal/harvest_and_replant

function gen:crops/internal/grow/go_to_new_age