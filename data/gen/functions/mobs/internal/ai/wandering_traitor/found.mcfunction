scoreboard players set #length gen.temp 0
scoreboard players set #random.min gen.math 0
scoreboard players set #random.max gen.math 1000
function gen:math/api/random/uniform_range
execute if score #random.value gen.math <= @p[tag=this] gen.player.wandering_traitor_chance at @s run function gen:mobs/internal/ai/wandering_traitor/spawn