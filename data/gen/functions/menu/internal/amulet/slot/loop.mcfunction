execute store result score #slot gen.temp run data get storage gen:temp temp[-1]
function gen:menu/internal/amulet/slot/main
data remove storage gen:temp temp[-1]
execute if data storage gen:temp temp[-1] run function gen:menu/internal/amulet/slot/loop 
