data modify storage gen:mobs read set from storage gen:mobs registry.ender_dragon
data modify storage gen:temp id set value "minecraft:ender_dragon_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Ender_dragon","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0