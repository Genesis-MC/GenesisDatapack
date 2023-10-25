
#Ferrous Shadows
execute if entity @s[advancements={gen:passive={voidbreach4=true}},tag=!gen.passive.ferrous_shadows,scores={gen.passive.ferrshadow_cd=0}] run function gen:gear/internal/passives/increase/ferrous_shadows
#14 sec cooldown
scoreboard players set .cooldown gen.ability 280