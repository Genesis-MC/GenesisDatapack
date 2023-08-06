data modify storage gen:mobs read set from storage gen:mobs registry.sniffer
data modify storage gen:temp id set value "minecraft:sniffer_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Sniffer","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0