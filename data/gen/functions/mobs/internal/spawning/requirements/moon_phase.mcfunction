scoreboard players set #success gen.temp 0
# 0 5 
execute store result score #min gen.temp run data get storage gen:mobs check_requirements[-1].requirements.moon_phase.min
execute store result score #max gen.temp run data get storage gen:mobs check_requirements[-1].requirements.moon_phase.max
#execute unless score #min gen.temp matches 0 if score #max gen.temp matches 0 run scoreboard players set #max gen.temp 2147483647
execute if score .moon_phase gen.world >= #min gen.temp if score .moon_phase gen.world <= #max gen.temp store success score #success gen.temp run return 1

execute store result score #exact gen.temp run data get storage gen:mobs check_requirements[-1].requirements.moon_phase.exact
execute store success score #success gen.temp if score .moon_phase gen.world = #exact gen.temp

#tellraw @p ["storage:",{"nbt":"check_requirements[-1].name","storage": "gen:mobs","color":"red"}]
#tellraw @p ["exact:",{"score":{"name": "#exact","objective": "gen.temp"},"color":"yellow"}]
#tellraw @p ["min:",{"score":{"name": "#min","objective": "gen.temp"},"color":"blue"}]
#tellraw @p ["max:",{"score":{"name": "#max","objective": "gen.temp"},"color":"aqua"}]

