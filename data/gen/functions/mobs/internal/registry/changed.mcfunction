tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/mobs -> ","color":"#CBBECB"},{"text":"mob list changed","color":"yellow"}]

execute if entity @a[tag=gen.dev.debug,limit=1] run function gen:mobs/internal/registry/get_amount_of_entries
function gen:mobs/internal/registry/filter/start
function gen:mobs/internal/registry/get_data/start
