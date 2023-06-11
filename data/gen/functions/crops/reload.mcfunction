tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"crops ","color":"yellow"},{"text":"module","color":"green"}]

scoreboard objectives add gen.crops.calc dummy
scoreboard objectives add gen.crops.growth_schedule dummy
scoreboard objectives add gen.crops.mined_sunflower minecraft.mined:minecraft.sunflower

function gen:crops/internal/register/start
schedule function gen:crops/internal/clock_4s 1t replace