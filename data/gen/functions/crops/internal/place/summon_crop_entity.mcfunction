# called on a new item_display

data modify storage gen:crops EntityData set value {Tags:["gen.crops","gen.crops.crop_entity","gen.crops.crop_entity.growing"],item_display:"fixed"}
scoreboard players set #model gen.crops.calc 0
function gen:crops/internal/get_model
data modify storage gen:crops EntityData.item set from storage gen:crops model
data modify storage gen:crops EntityData.item.tag.genesis.crops.crop_data set value {age:0,model:0,fully_grown:0b}
data modify storage gen:crops EntityData.item.tag.genesis.crops.crop_data.id set from storage gen:crops crop_definition.id
execute store result storage gen:crops EntityData.item.tag.genesis.crops.crop_data.numerical_id int 1 run scoreboard players get .index gen.crops.calc

execute if data storage gen:crops crop_definition.requirements{soil:["minecraft:farmland"]} if block ~ ~-1 ~ minecraft:farmland run data modify storage gen:crops EntityData.Tags append value "gen.crops.crop_entity.check_for_farmland_trampling"

data modify entity @s {} merge from storage gen:crops EntityData
execute store result score #random.min gen.math run data get storage gen:crops crop_definition.growth.time.min 1
execute store result score #random.max gen.math run data get storage gen:crops crop_definition.growth.time.max 1
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.crops.growth_schedule = .gametime gen.time
scoreboard players operation @s gen.crops.growth_schedule += #random.value gen.math

execute unless entity @e[type=marker,tag=gen.crops.ticker_entity,distance=..2.2] summon marker run function gen:crops/internal/place/summon_ticker_entity
execute as @e[type=marker,tag=gen.crops.ticker_entity,distance=..2.2] run scoreboard players operation @s gen.time.schedule = .gametime gen.time