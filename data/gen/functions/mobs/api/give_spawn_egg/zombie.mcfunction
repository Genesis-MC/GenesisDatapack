data modify storage gen:mobs read set from storage gen:mobs registry.zombie
data modify storage gen:temp id set value "minecraft:zombie_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Zombie","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
#return 0