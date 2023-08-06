data modify storage gen:mobs read set from storage gen:mobs registry.husk
data modify storage gen:temp id set value "minecraft:husk_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Husk","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0