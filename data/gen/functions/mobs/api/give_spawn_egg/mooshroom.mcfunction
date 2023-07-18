data modify storage gen:mobs read set from storage gen:mobs registry.mooshroom
data modify storage gen:temp id set value "minecraft:mooshroom_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Mooshroom","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0