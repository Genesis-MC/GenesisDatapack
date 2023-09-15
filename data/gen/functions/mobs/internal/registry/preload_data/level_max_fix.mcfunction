# if min is declared but not max it will set max to the int limit 

execute if data storage gen:mobs current_entity.requirements.level.min unless data storage gen:mobs current_entity.requirements.level.max run data modify storage gen:mobs current_entity.requirements.level.max set value 2147483647
