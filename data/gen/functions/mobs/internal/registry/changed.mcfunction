tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/mobs -> ","color":"#CBBECB"},{"text":"mob list changed","color":"yellow"}]

execute store result score #mobs.total_entries gen.temp if data storage gen:mobs registry[]
execute store result score . t if data storage gen:mobs registry[{name:"minecraft:base"}]
scoreboard players operation #mobs_total_entries gen.temp -= . t
function gen:mobs/internal/registry/filter/start
function gen:mobs/internal/registry/get_data/start
