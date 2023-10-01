data modify storage gen:mobs read set from storage gen:mobs registry.sheep
data modify storage gen:temp id set value "minecraft:sheep_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Sheep","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0