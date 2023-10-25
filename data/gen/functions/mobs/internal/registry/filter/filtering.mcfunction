data modify storage gen:mobs read set from storage gen:mobs preloaded_data
execute if score .player_count gen.world matches 1 as @a at @s run function gen:mobs/internal/registry/filter/dimension
function gen:mobs/internal/registry/filter/weather
function gen:mobs/internal/registry/filter/moon_phase/start
function gen:mobs/internal/registry/filter/block/start