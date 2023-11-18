
execute store result storage gen:ability heal.dmg int 1 run scoreboard players get @s gen.ability.healing_delay_dmg
function gen:ability/data/macros/damage with storage gen:ability heal
scoreboard players reset @s gen.ability.healing_delay_dmg