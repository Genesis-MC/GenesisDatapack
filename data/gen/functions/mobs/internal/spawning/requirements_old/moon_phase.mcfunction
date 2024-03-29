scoreboard players set #success gen.temp 0
execute store success score #bool gen.temp if data storage gen:mobs read[-1].requirements.moon_phase.exact
execute if score #bool gen.temp matches 0 run scoreboard players set #exact gen.temp -1
execute if score #bool gen.temp matches 1 store result score #exact gen.temp run data get storage gen:mobs read[-1].requirements.moon_phase.exact
execute if score .moon_phase gen.world = #exact gen.temp store success score #success gen.temp run return 1

execute store result score #min gen.temp run data get storage gen:mobs read[-1].requirements.moon_phase.min
execute store result score #max gen.temp run data get storage gen:mobs read[-1].requirements.moon_phase.max
execute if score #max gen.temp matches 0 run scoreboard players set #max gen.temp 2147483647

execute if score .moon_phase gen.world >= #min gen.temp if score .moon_phase gen.world <= #max gen.temp run scoreboard players set #success gen.temp 1
#tellraw @p ["storage:",{"nbt":"read[-1].name","storage": "gen:mobs","color":"red"}]
#tellraw @p ["exact:",{"score":{"name": "#exact","objective": "gen.temp"},"color":"yellow"}]
#tellraw @p ["min:",{"score":{"name": "#min","objective": "gen.temp"},"color":"blue"}]
#tellraw @p ["max:",{"score":{"name": "#max","objective": "gen.temp"},"color":"aqua"}]

