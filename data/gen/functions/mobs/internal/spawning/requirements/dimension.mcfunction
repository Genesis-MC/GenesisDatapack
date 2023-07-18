execute unless dimension minecraft:overworld run data remove storage gen:mobs check_requirements[{requirements:{dimension:"minecraft:overworld"}}]
execute unless dimension minecraft:the_nether run data remove storage gen:mobs check_requirements[{requirements:{dimension:"minecraft:the_nether"}}]
execute unless dimension minecraft:the_end run data remove storage gen:mobs check_requirements[{requirements:{dimension:"minecraft:the_end"}}]
function #gen:mobs/data/requirements/dimensions
function #gen:mobs/data/requirements/dimension_tags