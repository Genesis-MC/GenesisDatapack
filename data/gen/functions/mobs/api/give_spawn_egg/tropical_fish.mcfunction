data modify storage gen:mobs read set from storage gen:mobs registry.tropical_fish
data modify storage gen:temp id set value "minecraft:tropical_fish_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Tropical_fish","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0