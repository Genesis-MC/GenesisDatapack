#Runs every 6 minutes
execute as @e[tag=Crystalarium] if score @s gen.profession.mineralogy.growth_level matches ..3 at @s run function gen:professions/mineralogy/internal/crystalarium/grow

schedule function gen:professions/mineralogy/internal/mintick 360s replace