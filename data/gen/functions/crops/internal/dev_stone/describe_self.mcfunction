data modify storage gen:crops crop_data set from entity @s item.tag.genesis.crops.crop_data
function gen:crops/internal/grow/get_crop_definition

execute store result score #models gen.crops.calc run data get storage gen:crops crop_definition.growth.stages 1
scoreboard players operation #temp gen.crops.calc = #models gen.crops.calc
execute store result score #stages_per_model gen.crops.calc run data get storage gen:crops crop_definition.display.stages_per_model 1
scoreboard players operation #models gen.crops.calc /= #stages_per_model gen.crops.calc
scoreboard players operation #temp gen.crops.calc %= #stages_per_model gen.crops.calc
execute if score #temp gen.crops.calc matches 1.. run scoreboard players add #models gen.crops.calc 1

tellraw @p[tag=gen.raycaster] ["",\
{"text":"Crop Information","color":"light_purple"},{"text":"\n"},\
{"text":"id: ","color":"yellow"},{"nbt":"crop_data.id","storage":"gen:crops","color":"yellow"},{"text":"\n"},\
{"text":"age: ","color":"yellow"},{"nbt":"crop_data.age","storage":"gen:crops","color":"yellow"},{"text":"/","color":"yellow"},{"nbt":"crop_definition.growth.stages","storage":"gen:crops","color":"yellow"},{"text":"\n"},\
{"text":"fully grown: ","color":"yellow"},{"nbt":"crop_data.fully_grown","storage":"gen:crops","color":"yellow"},{"text":"\n"},\
{"text":"model: ","color":"yellow"},{"nbt":"crop_data.model","storage":"gen:crops","color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"#models","objective":"gen.crops.calc"},"color":"yellow"}]