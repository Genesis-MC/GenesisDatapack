data modify storage gen:mobs read set from storage gen:mobs registry.llama
data modify storage gen:temp id set value "minecraft:llama_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Llama","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0