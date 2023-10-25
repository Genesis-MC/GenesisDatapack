
#200 mana cost 19999 20000
execute if score @s gen.mana.current matches ..1 run return 0
scoreboard players remove @s gen.mana.current 1

particle firework ~ ~1 ~ 4.4 0.3 4.4 0 200
particle minecraft:dust_color_transition 1 0 0 3 1 1 0 ~ ~1 ~ 4.4 0.3 4.4 0 40
particle minecraft:dust_color_transition 1 1 0 3 0 1 0 ~ ~1 ~ 4.4 0.3 4.4 0 40
particle minecraft:dust_color_transition 0 1 0 3 0 1 1 ~ ~1 ~ 4.4 0.3 4.4 0 40
particle minecraft:dust_color_transition 0 1 1 3 0 0 1 ~ ~1 ~ 4.4 0.3 4.4 0 40
particle minecraft:dust_color_transition 0 0 1 3 1 0 1 ~ ~1 ~ 4.4 0.3 4.4 0 40
particle minecraft:dust_color_transition 1 0 1 3 1 0 0 ~ ~1 ~ 4.4 0.3 4.4 0 40
function gen:particles/circles/end_rod
#30 sec cooldown 600
scoreboard players set .cooldown gen.ability 10
