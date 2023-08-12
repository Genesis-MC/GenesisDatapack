data modify entity @s {} merge from storage gen:mobs success[-1].entity_data
execute if data storage gen:mobs success[-1].summon_function run function gen:mobs/internal/spawning/when_summoned with storage gen:mobs success[-1]
function gen:mobs/internal/spawning/stat_increases/root
function gen:mobs/internal/new_mob
