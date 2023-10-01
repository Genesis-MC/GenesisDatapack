data modify storage gen:mobs read set from storage gen:mobs registry.strider
data modify storage gen:temp id set value "minecraft:strider_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Strider","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0