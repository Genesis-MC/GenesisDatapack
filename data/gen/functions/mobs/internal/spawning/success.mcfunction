scoreboard players set #w_loop gen.temp 0
# tellraw @p ["CHOSEN ENTITY MOB ",{"nbt":"success[-1].name","storage":"gen:mobs","color":"aqua"}]
# just a quick bool state no need for long name
execute store success score # t if data storage gen:mobs success[-1].base_entity
execute if score # t matches 0 run function gen:mobs/internal/spawning/summon_data
#execute if score # t matches 1 run function gen:mobs/internal/spawning/base_entity/root