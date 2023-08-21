
execute as @a if score @s gen.passive.damage_dealt matches 1.. run function gen:gear/internal/passives/detect_hit

schedule function gen:gear/internal/tickupdate 1t replace