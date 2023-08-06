data modify storage gen:mobs read set from storage gen:mobs registry.wandering_trader
data modify storage gen:temp id set value "minecraft:wandering_trader_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Wandering_trader","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0