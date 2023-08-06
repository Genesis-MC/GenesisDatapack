data modify storage gen:mobs read set from storage gen:mobs registry.zoglin
data modify storage gen:temp id set value "minecraft:zoglin_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Zoglin","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0