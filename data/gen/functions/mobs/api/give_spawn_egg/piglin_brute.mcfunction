data modify storage gen:mobs read set from storage gen:mobs registry.piglin_brute
data modify storage gen:temp id set value "minecraft:piglin_brute_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Piglin_brute","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0