data modify storage gen:mobs read set from storage gen:mobs registry.wither_skeleton
data modify storage gen:temp id set value "minecraft:wither_skeleton_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Wither_skeleton","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0