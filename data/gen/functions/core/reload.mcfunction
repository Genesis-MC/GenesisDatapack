tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"core ","color":"yellow"},{"text":"module","color":"green"}]

scoreboard objectives add gen.time dummy
scoreboard objectives add gen.time.schedule dummy

# schedule functions
schedule function gen:core/internal/delay 1s replace
schedule function gen:core/internal/worldtimeupdater 1s replace