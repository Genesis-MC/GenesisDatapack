tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"mobs ","color":"yellow"},{"text":"module","color":"green"}]
scoreboard objectives add gen.mobs.level dummy
scoreboard objectives add gen.mobs.name_display dummy
# UUID = 0001e4dd-0000-ca49-0002-425300000000 used for resolving text
summon item_display ~ ~ ~ {UUID:[I;124125,51785,148051,0],view_range:0.0f,item:{id:"minecraft:dirt",Count:1b}}
execute unless score mobs.name_display.type gen.config matches -2147483648..2147483647 run scoreboard players set mobs.name_display.type gen.config 0
function gen:mobs/clock_10t
function gen:mobs/clock_30t