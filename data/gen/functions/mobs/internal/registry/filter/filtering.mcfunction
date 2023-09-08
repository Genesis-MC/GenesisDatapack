data modify storage gen:mobs read set value []
$data modify storage gen:mobs read set from storage gen:mobs registry.$(registry)
#   $tellraw @p ["REGISTRY $(registry) ",{"nbt":"read","storage":"gen:mobs"}]
execute if score .player_count gen.world matches 1 as @a at @s run function gen:mobs/internal/registry/filter/dimension
function gen:mobs/internal/registry/filter/weather
execute if data storage gen:mobs read[].requirements.moon_phase run function gen:mobs/internal/registry/filter/moon_phase/start
execute if data storage gen:mobs read[].requirements.block run function gen:mobs/internal/registry/filter/block/start


$data modify storage gen:mobs can_spawn.$(registry) set from storage gen:mobs read