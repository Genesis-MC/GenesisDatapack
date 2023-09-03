#scoreboard players operation . t = @s gen.biome

$data modify storage gen:mobs check_requirements append from storage gen:mobs check_biome_requirements[{requirements:{biomes:[$(id)]}}]


#       tellraw @p {"nbt":"check_requirements","storage": "gen:mobs","color":"red"}