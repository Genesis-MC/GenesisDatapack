scoreboard players set #requirements_met gen.crops.calc 1

execute if score #requirements_met gen.crops.calc matches 1 if data storage gen:crops crop_definition.requirements.soil run data modify storage gen:crops requirements set from storage gen:crops crop_definition.requirements.soil
execute if score #requirements_met gen.crops.calc matches 1 if data storage gen:crops crop_definition.requirements.soil store result score #requirements_met gen.crops.calc run function gen:crops/data/check_soil_requirement