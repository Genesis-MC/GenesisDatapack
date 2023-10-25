execute unless dimension minecraft:overworld run data remove storage gen:mobs read[{requirements:{dimension:"minecraft:overworld"}}]
execute unless dimension minecraft:the_nether run data remove storage gen:mobs read[{requirements:{dimension:"minecraft:the_nether"}}]
execute unless dimension minecraft:the_end run data remove storage gen:mobs read[{requirements:{dimension:"minecraft:the_end"}}]
function #gen:mobs/data/requirements/dimensions
execute if data storage gen:mobs read[].requirements.dimensionTag run function #gen:mobs/data/requirements/dimension_tags
# removing the key so less data to copy