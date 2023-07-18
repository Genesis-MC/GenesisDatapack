data modify storage gen:mobs read set from storage gen:mobs registry.iron_golem
data modify storage gen:temp id set value "minecraft:iron_golem_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Iron_golem","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0