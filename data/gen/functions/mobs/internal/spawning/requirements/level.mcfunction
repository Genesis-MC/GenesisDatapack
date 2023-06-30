scoreboard players set #success gen.temp 0


execute store result score #min gen.temp run data get storage gen:mobs current_item.requirements.level.min
execute store result score #max gen.temp run data get storage gen:mobs current_item.requirements.level.max
#execute unless score #min gen.temp matches 0 if score #max gen.temp matches 0 run scoreboard players set #max gen.temp 2147483647
execute if score @s gen.mobs.level >= #min gen.temp if score @s gen.mobs.level <= #max gen.temp store success score #success gen.temp run return 1

execute store result score #exact gen.temp run data get storage gen:mobs current_item.requirements.level.exact
execute store success score #success gen.temp if score @s gen.mobs.level = #exact gen.temp

#tellraw @p ["storage:",{"nbt":"current_item.name","storage": "gen:mobs","color":"red"}]
#tellraw @p ["exact:",{"score":{"name": "#exact","objective": "gen.temp"},"color":"yellow"}]
#tellraw @p ["min:",{"score":{"name": "#min","objective": "gen.temp"},"color":"blue"}]
#tellraw @p ["max:",{"score":{"name": "#max","objective": "gen.temp"},"color":"aqua"}]

