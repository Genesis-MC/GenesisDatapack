execute store result score #min gen.temp run data get storage gen:mobs check_requirements[-1].requirements.level.min
execute store result score #max gen.temp run data get storage gen:mobs check_requirements[-1].requirements.level.max
scoreboard players set #success gen.temp 0
execute if score @s gen.mobs.level >= #min gen.temp if score @s gen.mobs.level <= #max gen.temp run scoreboard players set #success gen.temp 1


#tellraw @p ["storage:",{"nbt":"check_requirements[-1].name","storage": "gen:mobs","color":"red"}]
#tellraw @p ["min:",{"score":{"name": "#min","objective": "gen.temp"},"color":"blue"}]
#tellraw @p ["max:",{"score":{"name": "#max","objective": "gen.temp"},"color":"aqua"}]

