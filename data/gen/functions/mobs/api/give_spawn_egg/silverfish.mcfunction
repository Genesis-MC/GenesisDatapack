data modify storage gen:mobs read set from storage gen:mobs registry.silverfish
data modify storage gen:temp id set value "minecraft:silverfish_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Silverfish","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0