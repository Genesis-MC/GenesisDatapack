data modify storage gen:mobs read2 append from storage gen:mobs read[-1]
execute if data storage gen:mobs read2[-1].requirements.level.min unless data storage gen:mobs read2[-1].requirements.level.max run data modify storage gen:mobs read2[-1].requirements.level.max set value 2147483647
data remove storage gen:mobs read[-1]
execute if data storage gen:mobs read[0] run function gen:mobs/internal/registry/preload_data/loop