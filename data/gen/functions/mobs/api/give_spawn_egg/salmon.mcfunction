data modify storage gen:mobs read set from storage gen:mobs registry.salmon
data modify storage gen:temp id set value "minecraft:salmon_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Salmon","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0