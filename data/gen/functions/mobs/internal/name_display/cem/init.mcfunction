summon area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Particle:"block air",Age:-2147483648,Duration:2147483647,Tags:["gen.mobs.name_display_cloud","new","gen.tracked","gen.ignore","gen.mobs.show_name"]}
ride @e[tag=new,limit=1] mount @s
execute on passengers run function gen:mobs/internal/name_display/cem/display
execute as @s run item modify entity 0001e4dd-0000-ca49-0002-425300000000 container.0 gen:mobs/save_name
data modify storage gen:temp name set value ''
data modify storage gen:temp name set from entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.display.Name
function gen:mobs/data/name_display/display_chooser
data modify entity @e[tag=new,limit=1] CustomName set from entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.display.Name

tag @e remove new