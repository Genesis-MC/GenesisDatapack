execute store result score #weight gen.temp run data get storage gen:mobs read[-1].weight
#tellraw @p ["old:",{"score":{"name": "#current_total_weight","objective": "gen.temp"},"color":"yellow"}]
scoreboard players operation #current_total_weight gen.temp -= #weight gen.temp
#tellraw @p ["new:",{"score":{"name": "#current_total_weight","objective": "gen.temp"},"color":"yellow"}]