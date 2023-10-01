data modify storage gen:mobs read set from storage gen:mobs registry.donkey
data modify storage gen:temp id set value "minecraft:donkey_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Donkey","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0