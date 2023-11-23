
#60 mana cost
execute if score @s gen.mana.current matches ..5999 run return 0
scoreboard players remove @s gen.mana.current 6000

effect give @s instant_health 1 2 false
particle heart ~ ~1 ~ 1 0.5 1 0 40
function gen:gear/internal/passives/increase/revitalize3

#18 sec cooldown
scoreboard players set .cooldown gen.ability 360
