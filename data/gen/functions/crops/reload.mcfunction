tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"crops ","color":"yellow"},{"text":"module","color":"green"}]

scoreboard objectives add gen.crops.calc dummy
function gen:crops/internal/register/start