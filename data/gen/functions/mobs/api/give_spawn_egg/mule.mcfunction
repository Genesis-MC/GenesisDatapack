data modify storage gen:mobs read set from storage gen:mobs registry.mule
data modify storage gen:temp id set value "minecraft:mule_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Mule","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0