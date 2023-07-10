function gen:gear/data/stat/reload
tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"gear ","color":"yellow"},{"text":"module","color":"green"}]

scoreboard objectives add gen.passive.health dummy
scoreboard objectives add gen.passive.hunger dummy
scoreboard objectives add gen.passive.ylvl dummy

schedule function gen:gear/internal/secupdate 1s replace
schedule function gen:gear/internal/tickupdate 1t replace
schedule function gen:gear/internal/5tickupdate 5t replace
scoreboard objectives add gen.ability dummy
scoreboard objectives add gen.ability.use minecraft.used:minecraft.warped_fungus_on_a_stick
