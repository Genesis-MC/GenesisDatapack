data modify storage gen:mobs read set from storage gen:mobs registry.snow_golem
data modify storage gen:temp id set value "minecraft:snow_golem_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Snow_golem","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0