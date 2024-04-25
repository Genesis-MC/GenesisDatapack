
execute if entity @s[advancements={gen:passive={steadfast=true}},tag=!gen.passive.steadfast] if score @s gen.passive.steadfast_cd matches 0 run function gen:gear/internal/passives/increase/steadfast 
scoreboard players reset @s gen.passive.damage_taken