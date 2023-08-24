function gen:gear/data/stat/reload
tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"gear ","color":"yellow"},{"text":"module","color":"green"}]

#Passives
scoreboard objectives add gen.passive.frostbite dummy
scoreboard objectives add gen.passive.health dummy
scoreboard objectives add gen.passive.ylvl dummy
scoreboard objectives add gen.passive.damage_dealt minecraft.custom:damage_dealt
scoreboard objectives add gen.passive.damage_taken minecraft.custom:damage_taken


scoreboard objectives add gen.bth.damage_absorbed minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add gen.bth.damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add gen.bth.wearing_block_helmet dummy


schedule function gen:gear/internal/secupdate 1s replace
schedule function gen:gear/internal/5tickupdate 5t replace
scoreboard objectives add gen.ability dummy
scoreboard objectives add gen.ability.use minecraft.used:minecraft.warped_fungus_on_a_stick
