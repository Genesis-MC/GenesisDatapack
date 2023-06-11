scoreboard players add #new_age gen.crops.calc 1
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.crops.growth_schedule += #random.value gen.math

execute if score #new_age gen.crops.calc < #max_age gen.crops.calc if score @s gen.crops.growth_schedule <= .gametime gen.time run function gen:crops/internal/grow/get_new_age