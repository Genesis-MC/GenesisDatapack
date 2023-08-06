data modify storage gen:mobs read set from storage gen:mobs registry.polar_bear
data modify storage gen:temp id set value "minecraft:polar_bear_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Polar_bear","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0