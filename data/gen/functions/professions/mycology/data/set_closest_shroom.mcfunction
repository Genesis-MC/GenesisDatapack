# called by gen:professions/myology//internal/crop/drop_seed

#> Dark Shroom
scoreboard players set #compare_shroom gen.profession.mycology.trait.growth_size 0
scoreboard players set #compare_shroom gen.profession.mycology.trait.growth_speed 0
scoreboard players set #compare_shroom gen.profession.mycology.trait.hazard -15
scoreboard players set #compare_shroom gen.profession.mycology.trait.moisture 17
scoreboard players set #compare_shroom gen.profession.mycology.trait.sunlight -50
scoreboard players set #compare_shroom gen.profession.mycology.trait.temperature -40
function gen:professions/mycology/internal/get_distance_of_shroom
data modify storage gen:crops seed_item.tag merge value {SkullOwner:{Name:"genesis.block.crop.seed.genesis:mycology/dark_shroom"},CustomModelData:3,display:{Name:'{"text":"Dark Shroom","italic":false,"color":"#331199"}'}}
scoreboard players operation #min gen.profession.mycology = #distance gen.profession.mycology

#> Light Shroom
scoreboard players set #compare_shroom gen.profession.mycology.trait.growth_size 0
scoreboard players set #compare_shroom gen.profession.mycology.trait.growth_speed 0
scoreboard players set #compare_shroom gen.profession.mycology.trait.hazard 6
scoreboard players set #compare_shroom gen.profession.mycology.trait.moisture -32
scoreboard players set #compare_shroom gen.profession.mycology.trait.sunlight 50
scoreboard players set #compare_shroom gen.profession.mycology.trait.temperature 31
function gen:professions/mycology/internal/get_distance_of_shroom
execute if score #distance gen.profession.mycology < #min gen.profession.mycology run data modify storage gen:crops seed_item.tag merge value {SkullOwner:{Name:"genesis.block.crop.seed.genesis:mycology/light_shroom"},CustomModelData:3,display:{Name:'{"text":"Light Shroom","italic":false,"color":"#55FFCC"}'}}
execute if score #distance gen.profession.mycology < #min gen.profession.mycology run scoreboard players operation #min gen.profession.mycology = #distance gen.profession.mycology
