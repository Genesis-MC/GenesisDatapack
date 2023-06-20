tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Sucessfully reloaded","color":"green"},{"text":" professions/","color":"yellow"},{"text":"mineralogy","color":"gold"}] 

scoreboard objectives add gen.profession.mineralogy.xp dummy
scoreboard objectives add gen.profession.mineralogy.level dummy

schedule function gen:professions/mineralogy/internal/sectick 1s replace
schedule function gen:professions/mineralogy/internal/slowtick 5t replace