#Runs every minute
execute as @e[tag=normCrystalarium] if score @s gen.profession.mineralogy.growth_level < @s gen.profession.mineralogy.growth_req at @s run function gen:professions/mineralogy/internal/crystalarium/grow
execute as @e[tag=pureCrystalarium] if score @s gen.profession.mineralogy.growth_level < @s gen.profession.mineralogy.growth_req at @s run function gen:professions/mineralogy/internal/crystalarium/grow

#execute as @e[tag=gen.professions.mineralogy.boost] if score @s gen.profession.mineralogy.growth_level < @s gen.profession.mineralogy.growth_req at @s run function gen:professions/mineralogy/internal/crystalarium/grow

schedule function gen:professions/mineralogy/internal/mintick 60s replace