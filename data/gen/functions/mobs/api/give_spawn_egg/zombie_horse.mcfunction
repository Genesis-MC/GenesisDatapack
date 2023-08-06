data modify storage gen:mobs read set from storage gen:mobs registry.zombie_horse
data modify storage gen:temp id set value "minecraft:zombie_horse_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Zombie_horse","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0