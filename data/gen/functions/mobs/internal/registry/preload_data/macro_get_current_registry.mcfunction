$data modify storage gen:mobs read set from storage gen:mobs registry.$(registry)
data modify storage gen:mobs read2 set value []

execute if data storage gen:mobs read[0] run function gen:mobs/internal/registry/preload_data/loop

$data modify storage gen:mobs registry.$(registry) set from storage gen:mobs read2