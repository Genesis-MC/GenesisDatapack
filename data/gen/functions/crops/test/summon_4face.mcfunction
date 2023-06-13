summon item_display ~ ~ ~ {item:{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:8}}}
scoreboard players remove #summon gen.crops.calc 1
execute if score #summon gen.crops.calc matches 1.. run function gen:crops/test/summon_4face