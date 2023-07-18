data modify storage gen:mobs read set from storage gen:mobs registry.zombified_piglin
data modify storage gen:temp id set value "minecraft:zombified_piglin_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Zombified_piglin","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0