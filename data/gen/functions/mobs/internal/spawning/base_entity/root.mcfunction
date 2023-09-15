scoreboard players operation $search gen.mobs.level = @s gen.mobs.level
function gen:mobs/internal/spawning/base_entity/macro with storage gen:mobs success[-1]
#setblock ~ ~ ~ stone
tp @s ~ -10000 ~
kill @s