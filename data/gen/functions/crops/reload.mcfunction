tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"crops ","color":"yellow"},{"text":"module","color":"green"}]

scoreboard objectives add gen.crops.calc dummy
scoreboard objectives add gen.crops.growth_schedule dummy
scoreboard objectives add gen.crops.mined_sunflower minecraft.mined:minecraft.sunflower

execute unless score crops.bonemeal_harvest_and_replant gen.config matches 0..1 run scoreboard players set crops.bonemeal_harvest_and_replant gen.config 1

function gen:crops/internal/register/compare
schedule function gen:crops/internal/clock_4s 1t replace