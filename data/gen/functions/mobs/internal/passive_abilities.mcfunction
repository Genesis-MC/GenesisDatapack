
##Basalt Drudge 
#Slow AOE
execute as @e[tag=gen.basalt_drudge] at @s if entity @p[distance=..4] unless entity @e[tag=gen.mob_ability.basalt_drudge,distance=..2] run summon area_effect_cloud ~ ~ ~ {Tags:["gen.mob_ability.basalt_drudge"],Particle:"block basalt",Radius:4f,Duration:100,effects:[{id:"minecraft:slowness",amplifier:2b,duration:60}]}

## Frozen Colossus
#Spawn everfrost charge
execute as @e[tag=gen.frozen_colossus] at @s if entity @p[distance=..8] unless entity @e[tag=gen.charge.everfrost,distance=..8] if predicate gen:randomizer/random25 at @p run summon block_display ~ ~2 ~ {Tags:["gen.charge.everfrost","gen.charge","gen.charge.new"],CustomNameVisible:1b,CustomName:'{"text":"6","color":"red","bold":true,"italic":false}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,0f,-0.1f],scale:[0.2f,0.2f,0.2f]},block_state:{Name:"minecraft:packed_ice"}}
#Freezeray attack
execute as @e[tag=gen.frozen_colossus] at @s if entity @p[distance=..8] if predicate gen:randomizer/random10 run function gen:mobs/internal/ability/freezeray

## Matryoshka
#Evoker Fang attack
execute as @e[tag=gen.livingwood_matryoshka] at @s if entity @p[distance=..8] if predicate gen:randomizer/random25 at @p run function gen:mobs/internal/ability/evoker_fangs
#Livingwood Lazar
execute as @e[tag=gen.livingwood_matryoshka] at @s positioned ~ ~3 ~ if entity @p[distance=..5] run function gen:mobs/internal/ability/livingwood_lazer

## Cultmonger
#Spawn soul charge
execute as @e[tag=gen.cultmonger] at @s if entity @p[distance=..8] unless entity @e[tag=gen.charge.soul,distance=..8] if predicate gen:randomizer/random25 at @p run summon block_display ~ ~2 ~ {Tags:["gen.charge.soul","gen.charge","gen.charge.new"],CustomNameVisible:1b,CustomName:'{"text":"6","color":"red","bold":true,"italic":false}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,0f,-0.1f],scale:[0.2f,0.2f,0.2f]},block_state:{Name:"minecraft:soul_sand"}}
execute as @e[tag=gen.cultmonger] at @s if entity @p[distance=..8] if predicate gen:randomizer/random10 run function gen:mobs/internal/ability/regenerate

#Charges
execute as @e[tag=gen.charge.new] run scoreboard players set @s gen.mobs.charge.countdown 6
execute as @e[tag=gen.charge.new] run tag @s remove gen.charge.new

execute as @e[tag=gen.charge] run scoreboard players remove @s gen.mobs.charge.countdown 1
execute as @e[tag=gen.charge] store result entity @s CustomName int 1 run scoreboard players get @s gen.mobs.charge.countdown
execute as @e[tag=gen.charge] if score @s gen.mobs.charge.countdown matches 6 run data modify entity @s CustomName set value '{"text":"6","color":"red","bold":true,"italic":false}'
execute as @e[tag=gen.charge] if score @s gen.mobs.charge.countdown matches 5 run data modify entity @s CustomName set value '{"text":"5","color":"red","bold":true,"italic":false}'
execute as @e[tag=gen.charge] if score @s gen.mobs.charge.countdown matches 4 run data modify entity @s CustomName set value '{"text":"4","color":"red","bold":true,"italic":false}' 
execute as @e[tag=gen.charge] if score @s gen.mobs.charge.countdown matches 3 run data modify entity @s CustomName set value '{"text":"3","color":"red","bold":true,"italic":false}'
execute as @e[tag=gen.charge] if score @s gen.mobs.charge.countdown matches 2 run data modify entity @s CustomName set value '{"text":"2","color":"red","bold":true,"italic":false}'
execute as @e[tag=gen.charge] if score @s gen.mobs.charge.countdown matches 1 run data modify entity @s CustomName set value '{"text":"1","color":"red","bold":true,"italic":false}'
execute as @e[tag=gen.charge] if score @s gen.mobs.charge.countdown matches ..0 at @s run function gen:mobs/internal/charge_detonation

schedule function gen:mobs/internal/passive_abilities 1s replace