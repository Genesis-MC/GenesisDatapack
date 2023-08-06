execute if data storage gen:mobs success[-1].stat_increases.percentage run function gen:mobs/internal/spawning/stat_increases/percentage/root
execute if data storage gen:mobs success[-1].stat_increases.flat run function gen:mobs/internal/spawning/stat_increases/flat/root
execute store result entity @s Health float 1 run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base

