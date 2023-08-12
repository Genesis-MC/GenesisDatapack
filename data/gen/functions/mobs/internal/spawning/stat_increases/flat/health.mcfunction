execute store result score #n gen.math run data get storage gen:mobs success[-1].stat_increases.flat.health.n
execute store result score #p gen.math run data get storage gen:mobs success[-1].stat_increases.flat.health.p
execute store result score #b gen.math run data get storage gen:mobs success[-1].stat_increases.flat.health.b 100
function gen:math/api/random/binomial
scoreboard players operation #b gen.math *= #binomial.rolls gen.math
execute store result score #base gen.temp run attribute @s minecraft:generic.max_health base get 100
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 0.01 run scoreboard players operation #b gen.math += #base gen.temp
