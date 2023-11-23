
#50 mana cost
execute if score @s gen.mana.current matches ..4999 run return 0
scoreboard players remove @s gen.mana.current 5000

effect give @s instant_health 1 1 false
particle heart ~ ~1 ~ 1 0.5 1 0 20
function gen:gear/internal/passives/increase/revitalize2

#15 sec cooldown
scoreboard players set .cooldown gen.ability 300
