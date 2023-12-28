execute align xyz unless entity @e[type=minecraft:leash_knot,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run summon minecraft:leash_knot

data modify storage gen:temp macro set value {}
data modify storage gen:temp macro.Rotation set from entity @s Rotation
execute store result storage gen:temp macro.X int 1 run data get entity @s Pos[0] 1
execute store result storage gen:temp macro.Y int 1 run data get entity @s Pos[1] 1
execute store result storage gen:temp macro.Z int 1 run data get entity @s Pos[2] 1

scoreboard players set #variant gen.temp 256
execute store result score #temp gen.temp run random value 0..4
scoreboard players operation #variant gen.temp *= #temp gen.temp
execute store result score #temp gen.temp run random value 0..6
scoreboard players operation #variant gen.temp += #temp gen.temp
execute store result storage gen:temp macro.Variant int 1 run scoreboard players get #variant gen.temp

function gen:structure/data/feature_marker/activate/leashed_horse_summon with storage gen:temp macro