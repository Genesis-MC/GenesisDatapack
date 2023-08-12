execute store result score #n gen.math run data get storage gen:mobs success[-1].stat_increases[1]ercentage.health[0]
execute store result score #p gen.math run data get storage gen:mobs success[-1].stat_increases[1]ercentage.health[1]
execute store result score #b gen.math run data get storage gen:mobs success[-1].stat_increases[1]ercentage.health[2]
function gen:math/api/random/binomial
scoreboard players operation #b gen.math *= #binomial.rolls gen.math
execute store result score #base gen.temp run attribute @s minecraft:generic.max_health base get 100
scoreboard players operation #b gen.math *= #base gen.temp
scoreboard players operation #b gen.math /= #100 gen.const
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 0.01 run scoreboard players operation #b gen.math += #base gen.temp
