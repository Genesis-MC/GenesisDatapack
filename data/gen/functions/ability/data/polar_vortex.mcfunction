scoreboard players reset #temp gen.math
#Checks if the ability is active; If so, starts the ability cooldown and stops the effect
execute if entity @s[tag=gen.ability.polar_vortex] run scoreboard players set .cooldown gen.ability 120
execute if entity @s[tag=gen.ability.polar_vortex] run scoreboard players set #temp gen.math 9
execute if score #temp gen.math matches 9 run tag @s remove gen.ability.polar_vortex
execute if score #temp gen.math matches 9 run return 0

#If the ability is not active:
#10 mana cost
execute if score @s gen.mana.current matches ..999 run return 0
scoreboard players remove @s gen.mana.current 1000

tag @s add gen.ability.polar_vortex
scoreboard players set @s gen.active.polar_vortex_timer 0

#0 sec cooldown
scoreboard players set .cooldown gen.ability 0