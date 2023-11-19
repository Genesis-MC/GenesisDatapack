
#45 mana cost
execute if score @s gen.mana.current matches ..4499 run return 0
scoreboard players remove @s gen.mana.current 4500

execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 1.000 0.000 0.000 1",Radius:6f,Duration:160,Tags:["gen.ability.sanctify"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dripping_obsidian_tear",Radius:6f,Duration:30}

#Ferrous Shadows
execute if entity @s[advancements={gen:passive={voidbreach4=true}},tag=!gen.passive.ferrous_shadows,scores={gen.passive.ferrshadow_cd=0}] run function gen:gear/internal/passives/increase/ferrous_shadows
#18 sec cooldown
scoreboard players set .cooldown gen.ability 360