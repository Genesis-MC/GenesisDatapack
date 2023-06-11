execute if score #new_age gen.crops.calc >= #max_age gen.crops.calc run tag @s remove gen.crops.crop_entity.growing
execute if score #new_age gen.crops.calc >= #max_age gen.crops.calc run tag @s add gen.crops.crop_entity.fully_grown
execute if score #new_age gen.crops.calc >= #max_age gen.crops.calc run data modify storage gen:crops crop_data.fully_grown set value 1b

execute store result score #stages_per_model gen.crops.calc run data get storage gen:crops crop_definition.display.stages_per_model 1
execute store result score #old_model gen.crops.calc run data get storage gen:crops crop_data.model 1
scoreboard players operation #model gen.crops.calc = #new_age gen.crops.calc
scoreboard players operation #model gen.crops.calc /= #stages_per_model gen.crops.calc

execute store result storage gen:crops crop_data.age int 1 run scoreboard players get #new_age gen.crops.calc
execute store result storage gen:crops crop_data.model int 1 run scoreboard players get #model gen.crops.calc

execute unless score #model gen.crops.calc = #old_model gen.crops.calc run function gen:crops/internal/get_model
execute unless score #model gen.crops.calc = #old_model gen.crops.calc run data modify entity @s item set from storage gen:crops model

data modify entity @s item.tag.genesis.crops.crop_data set from storage gen:crops crop_data