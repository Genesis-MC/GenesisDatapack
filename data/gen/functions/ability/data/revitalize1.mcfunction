
#40 mana cost
execute if score @s gen.mana.current matches ..3999 run return 0
scoreboard players remove @s gen.mana.current 4000

effect give @s instant_health 1 0 false
particle heart ~ ~1 ~ 1 0.5 1 0 30
function gen:gear/internal/passives/increase/revitalize1

#13 sec cooldown
scoreboard players set .cooldown gen.ability 260
