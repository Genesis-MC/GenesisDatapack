data modify entity @s {} merge from storage gen:mobs success[-1].entity_data
data modify storage gen:temp macro.summon_function set value ""
execute if data storage gen:mobs success[-1].summon_function run data modify storage gen:temp macro.summon_function set from storage gen:mobs success[-1].summon_function
# tellraw @p ["macro summon_function ",{"nbt":"macro.summon_function","storage": "gen:temp","color":"dark_purple"}]
execute if data storage gen:mobs success[-1].summon_function run function gen:mobs/internal/spawning/summon_function with storage gen:temp macro
function gen:mobs/internal/spawning/stat_increases/root
function gen:mobs/internal/new_mob
