data modify storage gen:mobs read set from storage gen:mobs registry.zombie_villager
data modify storage gen:temp id set value "minecraft:zombie_villager_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Zombie_villager","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0