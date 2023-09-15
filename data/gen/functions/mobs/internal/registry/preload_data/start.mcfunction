#data remove storage gen:mobs cache

tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/mobs -> ","color":"#CBBECB"},{"text":"mob list preloaded data! ","color":"yellow"}]
data modify storage gen:mobs preloaded_data set value []
data modify storage gen:mobs read set from storage gen:mobs registry
function gen:mobs/internal/registry/preload_data/loop