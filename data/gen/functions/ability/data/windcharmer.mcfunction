
#60 mana cost
execute if score @s gen.mana.current matches ..5999 run return 0
scoreboard players remove @s gen.mana.current 6000

execute as @e[distance=..3,type=#gen:alive_no_player] run data merge entity @s {Motion:[0d,1d,0d]}
function gen:particles/rise/cloud
#6 sec cooldown
scoreboard players set .cooldown gen.ability 120
