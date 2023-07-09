
data modify storage gen:mobs old_registry set from storage gen:mobs registry
function gen:mobs/data/registry
execute store success score #different gen.temp run data modify storage gen:mobs old_registry set from storage gen:mobs registry
data modify storage gen:mobs old_registry set value []

execute if score #different gen.temp matches 1 run function gen:mobs/internal/registry/preload_data/start
execute if score #different gen.temp matches 1 run function gen:mobs/internal/registry/changed
execute if score #different gen.temp matches 0 run function gen:mobs/internal/registry/same
tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/mobs -> ","color":"#CBBECB"},{"text":"mob list has ","color":"yellow"},{"score":{"name":"#mobs.total_entries","objective":"gen.temp"},"color":"gold"},{"text":" entry(ies)","color":"yellow"}]