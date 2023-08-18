tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"core ","color":"yellow"},{"text":"module","color":"green"}]

scoreboard objectives add gen.time dummy
scoreboard objectives add gen.time.schedule dummy
scoreboard objectives add gen.item.use.warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick

# schedule functions
schedule function gen:core/internal/delay 1s replace