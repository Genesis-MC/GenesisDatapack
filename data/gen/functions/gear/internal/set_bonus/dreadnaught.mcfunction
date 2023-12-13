
execute if entity @s[advancements={gen:passive={dreadnaught3=true}}] run advancement grant @s only gen:passive dreadnaught4
execute if entity @s[advancements={gen:passive={dreadnaught2=true}}] run advancement grant @s only gen:passive dreadnaught3
execute if entity @s[advancements={gen:passive={dreadnaught1=true}}] run advancement grant @s only gen:passive dreadnaught2
execute if entity @s[advancements={gen:passive={dreadnaught1=true}}] run function gen:gear/internal/passives/increase/heavy_metal
advancement grant @s only gen:passive dreadnaught1