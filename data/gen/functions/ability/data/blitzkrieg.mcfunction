execute anchored eyes run function gen:particles/line/blitz
playsound entity.lightning_bolt.impact player @a ~ ~ ~ 0.5 1.5
execute anchored eyes positioned ^ ^-1 ^1 as @e[distance=..1.5,tag=!ally,type=#gen:alive] run damage @s 5 player_explosion
execute anchored eyes positioned ^ ^-1 ^3 as @e[distance=..1.5,tag=!ally,type=#gen:alive] run damage @s 5 player_explosion
execute anchored eyes positioned ^ ^-1 ^5 as @e[distance=..1.5,tag=!ally,type=#gen:alive] run damage @s 5 player_explosion

#Ferrous Shadows
execute if entity @s[advancements={gen:passive={voidbreach4=true}}] run say ferrous shadows
#7 sec cooldown
scoreboard players set .cooldown gen.ability 140