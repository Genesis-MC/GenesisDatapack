scoreboard players set #loot_table_bonus gen.crops.calc 0
function gen:crops/internal/mine/drop_loot

scoreboard players set #new_age gen.crops.calc 0

tag @s add gen.crops.crop_entity.growing
tag @s remove gen.crops.crop_entity.fully_grown
data modify storage gen:crops crop_data.fully_grown set value 0b

execute store result score #random.min gen.math run data get storage gen:crops crop_definition.growth.time.min 1
execute store result score #random.max gen.math run data get storage gen:crops crop_definition.growth.time.max 1
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.crops.growth_schedule = .gametime gen.time
scoreboard players operation @s gen.crops.growth_schedule += #random.value gen.math

execute unless entity @e[type=marker,tag=gen.crops.ticker_entity,distance=..2.2] summon marker run function gen:crops/internal/place/summon_ticker_entity
execute as @e[type=marker,tag=gen.crops.ticker_entity,distance=..2.2] run scoreboard players operation @s gen.time.schedule = .gametime gen.time