
execute as @a[scores={gen.passive.ferrshadow_cd=1..}] run scoreboard players remove @s gen.passive.ferrshadow_cd 1
execute as @a[scores={gen.passive.ferrshadow_cd=0},tag=gen.passive.ferrous_shadows] run function gen:gear/internal/passives/decrease/ferrous_shadows

#Heart of the Sea/Seaborn 2-Set Bonus
execute as @a[advancements={gen:passive={seaborn2=true}}] at @s if block ~ ~ ~ water run effect give @s conduit_power 6 0 true
#Sea Born/Seaborn 4-Set Bonus
execute as @a[advancements={gen:passive={seaborn4=true}}] at @s if block ~ ~ ~ water run effect give @s dolphins_grace 6 0 true
#Frostveil 3-Set Bonus
execute as @a[advancements={gen:passive={frostveil3=true}}] at @s as @e[distance=..8,tag=!gen.ally,type=#gen:alive] if score @s gen.passive.frostbite matches 1.. run effect give @s weakness 2 1
#Suspicious Presence
execute as @a[advancements={gen:passive={suspicious_presence=true}}] if predicate gen:gear/only_helmet run effect give @s invisibility 2 0 true

#Polar Vortex
execute as @a[tag=gen.ability.polar_vortex] run function gen:ability/data/helper_functions/polar_vortex

schedule function gen:gear/internal/secupdate 1s replace