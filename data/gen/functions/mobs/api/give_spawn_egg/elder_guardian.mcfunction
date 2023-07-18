data modify storage gen:mobs read set from storage gen:mobs registry.elder_guardian
data modify storage gen:temp id set value "minecraft:elder_guardian_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Elder_guardian","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0