execute store result score #min gen.temp run data get storage gen:mobs check_requirements[-1].requirements.level.min
execute store result score #max gen.temp run data get storage gen:mobs check_requirements[-1].requirements.level.max
execute store success score #success gen.temp if score @s gen.mobs.level >= #min gen.temp if score @s gen.mobs.level <= #max gen.temp

#tellraw @p ["storage:",{"nbt":"check_requirements[-1].name","storage": "gen:mobs","color":"red"}]
#tellraw @p ["exact:",{"score":{"name": "#exact","objective": "gen.temp"},"color":"yellow"}]
#tellraw @p ["min:",{"score":{"name": "#min","objective": "gen.temp"},"color":"blue"}]
#tellraw @p ["max:",{"score":{"name": "#max","objective": "gen.temp"},"color":"aqua"}]

