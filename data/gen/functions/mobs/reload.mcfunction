tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" /tag @s add gen.dev.debug.all for extra debug!","color":"green"},{"text":"","color":"yellow"},{"text":"","color":"green"}]
tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"mobs ","color":"yellow"},{"text":"module","color":"green"}]
#tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" please test the data driven mob spawning! ","color":"green"},{"text":"","color":"yellow"},{"text":"","color":"green"}]
#tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" go to ","color":"green"},{"text":"gen:mobs/data/registry","color":"yellow"},{"text":"for more info!","color":"green"}]
team add black_outline 
team modify black_outline color black
team modify black_outline friendlyFire false
scoreboard objectives add gen.mobs.level dummy
scoreboard objectives add gen.player.wandering_traitor_chance dummy
scoreboard objectives add gen.player.stolen_emeralds dummy
scoreboard objectives add gen.mobs.name_display dummy
scoreboard objectives add gen.mobs.weight dummy
scoreboard objectives add gen.mobs.demon.animation dummy
scoreboard objectives add gen.mobs.phases dummy
# UUID = 0001e4dd-0000-ca49-0002-425300000000 used for resolving text
summon minecraft:item_display ~ ~ ~ {UUID:[I;124125,51785,148051,0],view_range:0.0f,item:{id:"minecraft:dirt",Count:1b}}
execute unless score mobs.name_display.type gen.config matches -2147483648..2147483647 run scoreboard players set mobs.name_display.type gen.config 0

function gen:mobs/internal/registry/register
function gen:mobs/clock_10t
function gen:mobs/clock_30t