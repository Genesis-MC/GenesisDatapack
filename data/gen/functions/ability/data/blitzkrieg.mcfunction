
#20 mana cost
execute if score @s gen.mana.current matches ..1999 run return 0
scoreboard players remove @s gen.mana.current 2000

execute anchored eyes run function gen:particles/line/blitz
playsound entity.lightning_bolt.impact player @a ~ ~ ~ 0.5 1.5
execute anchored eyes positioned ^ ^-1 ^1 as @e[distance=..1.5,tag=!gen.ally,type=#gen:alive] run damage @s 7 player_explosion
execute anchored eyes positioned ^ ^-1 ^3 as @e[distance=..1.5,tag=!gen.ally,type=#gen:alive] run damage @s 7 player_explosion
execute anchored eyes positioned ^ ^-1 ^5 as @e[distance=..1.5,tag=!gen.ally,type=#gen:alive] run damage @s 7 player_explosion

#Ferrous Shadows
execute if entity @s[advancements={gen:passive={voidbreach4=true}},tag=!gen.passive.ferrous_shadows,scores={gen.passive.ferrshadow_cd=0}] run function gen:gear/internal/passives/increase/ferrous_shadows
#7 sec cooldown
scoreboard players set .cooldown gen.ability 140