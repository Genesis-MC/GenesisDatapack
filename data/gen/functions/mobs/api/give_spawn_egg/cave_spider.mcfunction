data modify storage gen:mobs read set from storage gen:mobs registry.cave_spider
data modify storage gen:temp id set value "minecraft:cave_spider_spawn_egg"
data modify storage gen:temp registry set value '{"text":"Cave_spider","color":"yellow"}'
function gen:mobs/internal/registry/api/give_eggs/start
return 0