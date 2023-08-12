execute store result score #n gen.math run data get storage gen:mobs success[-1].stat_increases.flat.follow_range[0]
execute store result score #p gen.math run data get storage gen:mobs success[-1].stat_increases.flat.follow_range[1]
execute store result score #b gen.math run data get storage gen:mobs success[-1].stat_increases.flat.follow_range[2]
function gen:math/api/random/binomial
scoreboard players operation #b gen.math *= #binomial.rolls gen.math
execute store result score #base gen.temp run attribute @s minecraft:generic.follow_range base get 100
execute store result entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base double 0.01 run scoreboard players operation #b gen.math += #base gen.temp
