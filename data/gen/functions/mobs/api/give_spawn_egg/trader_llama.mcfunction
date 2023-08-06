data modify storage gen:mobs read set from storage gen:mobs registry.trader_llama
data modify storage gen:temp id set value "minecraft:trader_llama_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Trader_llama","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0