
execute as @a store result score @s gen.passive.ylvl run data get entity @s Pos[1]
execute as @a store result score @s gen.passive.health run data get entity @s Health

#UnfetteredI
execute as @a[advancements={gen:passive={unfetteredI=true}}] run function gen:gear/internal/passives/unfettered1
#UnfetteredII
execute as @a[advancements={gen:passive={unfetteredII=true}}] run function gen:gear/internal/passives/unfettered2
#Featherweight
execute as @a[advancements={gen:passive={featherweight=true}}] if predicate gen:utils/is_sneaking at @s if block ~ ~-1 ~ air run effect give @s slow_falling 1 0 true
#Supreme Speed
execute as @a[advancements={gen:passive={supreme_speed=true}}] if predicate gen:utils/is_sprinting run effect give @s speed 1 4 true
#Frenzy
execute as @a[advancements={gen:passive={frenzy=true}}] if score .percenthp gen.math matches ..30 run effect give @s speed 1 1 true
#Crimson Pact
execute as @a[advancements={gen:passive={crimson_pact=true}}] if score .percenthp gen.math matches ..30 if entity @s[tag=!gen.passive.crimson_pact] run function gen:gear/internal/passives/increase/crimson_pact {val:20} 
execute as @a[advancements={gen:passive={crimson_pact=true}}] if score .percenthp gen.math matches 31.. if entity @s[tag=gen.passive.crimson_pact] run function gen:gear/internal/passives/decrease/crimson_pact {val:20} 
execute as @a[advancements={gen:passive={crimson_pact=false}}] if entity @s[tag=gen.passive.crimson_pact] run function gen:gear/internal/passives/decrease/crimson_pact {val:20}

#Heart of the Sea/Seaborn 2-Set Bonus
execute as @a[advancements={gen:passive={seaborn2=true}}] at @s if block ~ ~ ~ water run effect give @s conduit_power 6 0 true
#Sea Born/Seaborn 4-Set Bonus
execute as @a[advancements={gen:passive={seaborn4=true}}] at @s if block ~ ~ ~ water run effect give @s dolphins_grace 6 0 true

schedule function gen:gear/internal/5tickupdate 5t replace