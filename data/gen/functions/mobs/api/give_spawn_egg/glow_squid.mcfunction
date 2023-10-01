data modify storage gen:mobs read set from storage gen:mobs registry.glow_squid
data modify storage gen:temp id set value "minecraft:glow_squid_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Glow_squid","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0