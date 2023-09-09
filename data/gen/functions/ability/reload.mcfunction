scoreboard objectives add gen.ability dummy
scoreboard objectives add gen.ability.use minecraft.used:minecraft.warped_fungus_on_a_stick

tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"ability ","color":"yellow"},{"text":"module","color":"green"}]
