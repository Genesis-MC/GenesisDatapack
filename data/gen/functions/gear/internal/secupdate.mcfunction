
## Cooldowns
#Ferrous Shadows
execute as @a[scores={gen.passive.ferrshadow_cd=1..}] run scoreboard players remove @s gen.passive.ferrshadow_cd 1
execute as @a[scores={gen.passive.ferrshadow_cd=0},tag=gen.passive.ferrous_shadows] run function gen:gear/internal/passives/decrease/ferrous_shadows
#Revitalize 1
execute as @a[scores={gen.active.revitalize1_cd=1..}] run scoreboard players remove @s gen.active.revitalize1_cd 1
execute as @a[scores={gen.active.revitalize1_cd=0},tag=gen.active.revitalize1] run function gen:gear/internal/passives/decrease/revitalize1
#Revitalize 2
execute as @a[scores={gen.active.revitalize2_cd=1..}] run scoreboard players remove @s gen.active.revitalize2_cd 1
execute as @a[scores={gen.active.revitalize2_cd=0},tag=gen.active.revitalize2] run function gen:gear/internal/passives/decrease/revitalize2
#Revitalize 3
execute as @a[scores={gen.active.revitalize3_cd=1..}] run scoreboard players remove @s gen.active.revitalize3_cd 1
execute as @a[scores={gen.active.revitalize3_cd=0},tag=gen.active.revitalize3] run function gen:gear/internal/passives/decrease/revitalize3
#Fortitude of the Undying
execute as @a[scores={gen.passive.fortitude_of_the_undying_cd=1..}] run scoreboard players remove @s gen.passive.fortitude_of_the_undying_cd 1
execute as @a[scores={gen.passive.fortitude_of_the_undying_cd=0},tag=gen.passive.fortitude_of_the_undying] run function gen:gear/internal/passives/decrease/fortitude_of_the_undying

#Lifeline 1
execute as @a[advancements={gen:passive={lifeline1=true}}] run effect give @s regeneration 3 0 true
#Nightfall
execute as @a[advancements={gen:passive={nightfall=true}},tag=!gen.passive.nightfall] if predicate gen:utils/is_night run function gen:gear/internal/passives/increase/nightfall
execute as @a[tag=gen.passive.nightfall,advancements={gen:passive={nightfall=true}}] unless predicate gen:utils/is_night run function gen:gear/internal/passives/decrease/nightfall
execute as @a[tag=gen.passive.nightfall,advancements={gen:passive={nightfall=false}}] run function gen:gear/internal/passives/decrease/nightfall
#Heart of the Sea/Seaborn 2-Set Bonus
execute as @a[advancements={gen:passive={seaborn2=true}}] at @s if block ~ ~ ~ water run effect give @s conduit_power 6 0 true
#Sea Born/Seaborn 4-Set Bonus
execute as @a[advancements={gen:passive={seaborn4=true}}] at @s if block ~ ~ ~ water run effect give @s dolphins_grace 6 0 true
#Frostveil 3-Set Bonus
execute as @a[advancements={gen:passive={frostveil3=true}}] at @s as @e[distance=..8,tag=!gen.ally,type=#gen:alive] if score @s gen.passive.frostbite matches 1.. run effect give @s weakness 2 1
#Suspicious Presence
execute as @a[advancements={gen:passive={suspicious_presence=true}}] if predicate gen:gear/only_helmet run effect give @s invisibility 2 0 true
#Fortitude of the Undying
execute as @a[advancements={gen:passive={dreadnaught4=true}},tag=!gen.passive.fortitude_of_the_undying] if score @s gen.passive.fortitude matches ..49 run scoreboard players add @s gen.passive.fortitude 1

schedule function gen:gear/internal/secupdate 1s replace