# called by gen:crops/internal/mine/drop_seed
# tag when shroom was fully grown: gen.crops.crop_entity.fully_grown
# storage that will be the tags: gen:core seed_item.tag

execute if entity @s[tag=gen.crops.crop_entity.fully_grown] unless score @s gen.profession.mycology.trait.mutability matches 0 run function gen:professions/mycology/internal/crop/randomize_traits
execute store result storage gen:crops seed_item.tag.gen.mycology.growth_size int 1 run scoreboard players get @s gen.profession.mycology.trait.growth_size
execute store result storage gen:crops seed_item.tag.gen.mycology.growth_speed int 1 run scoreboard players get @s gen.profession.mycology.trait.growth_speed
execute store result storage gen:crops seed_item.tag.gen.mycology.hazard int 1 run scoreboard players get @s gen.profession.mycology.trait.hazard
execute store result storage gen:crops seed_item.tag.gen.mycology.moisture int 1 run scoreboard players get @s gen.profession.mycology.trait.moisture
execute store result storage gen:crops seed_item.tag.gen.mycology.mutability int 1 run scoreboard players get @s gen.profession.mycology.trait.mutability
execute store result storage gen:crops seed_item.tag.gen.mycology.sunlight int 1 run scoreboard players get @s gen.profession.mycology.trait.sunlight
execute store result storage gen:crops seed_item.tag.gen.mycology.temperature int 1 run scoreboard players get @s gen.profession.mycology.trait.temperature
