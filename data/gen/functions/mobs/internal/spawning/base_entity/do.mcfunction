scoreboard players operation @s gen.mobs.level = $search gen.mobs.level
data modify entity @s {} merge from storage gen:mobs success[-1].entity_data
function gen:mobs/internal/spawning/summon_data