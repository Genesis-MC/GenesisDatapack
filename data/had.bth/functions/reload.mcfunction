scoreboard objectives add had.bth.damage_absorbed minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add had.bth.damage_taken minecraft.custom:minecraft.damage_taken



scoreboard objectives add had.temp dummy
# UUID =  000005fb-0000-016e-0000-055300012265
execute in minecraft:overworld run summon minecraft:item_display ~ ~ ~ {UUID:[I;1531,366,1363,74341],item:{id:"minecraft:dirt",Count:1b}}
function had.bth:set_consts