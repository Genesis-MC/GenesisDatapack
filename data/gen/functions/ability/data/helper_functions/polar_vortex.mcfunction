
#10 mana/0.5 second
execute if score @s gen.mana.current matches ..499 run return 0
scoreboard players remove @s gen.mana.current 500
execute at @s run particle snowflake ~ ~2 ~ 2 0.7 2 0 60
execute at @s run particle dust 0 1 1 1 ~ ~2 ~ 2 0.7 2 0 60

execute at @s as @e[distance=..6,tag=!gen.ally,type=#gen:alive] run function gen:gear/internal/passives/frostbite
scoreboard players add @s gen.active.polar_vortex_timer 1
execute if score @s gen.active.polar_vortex_timer matches 60.. run tag @s remove gen.ability.polar_vortex
execute if score @s gen.active.polar_vortex_timer matches 60.. run return 0
