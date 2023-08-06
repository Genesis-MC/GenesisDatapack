data modify storage gen:mobs read set from storage gen:mobs registry.cod
data modify storage gen:temp id set value "minecraft:cod_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Cod","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0