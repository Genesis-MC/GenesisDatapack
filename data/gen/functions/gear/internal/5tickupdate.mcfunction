
execute as @a store result score @s gen.passive.ylvl run data get entity @s Pos[1]
execute as @a store result score @s gen.passive.hunger run data get entity @s foodLevel
execute as @a store result score @s gen.passive.health run data get entity @s Health

#UnfetteredI
execute as @a[advancements={gen:passive={unfetteredI=true}}] run function gen:gear/internal/passives/unfettered1
#UnfetteredII
execute as @a[advancements={gen:passive={unfetteredII=true}}] run function gen:gear/internal/passives/unfettered2
#Featherweight
execute as @a[advancements={gen:passive={featherweight=true}}] if predicate gen:utils/is_sneaking if block ~ ~ ~ air run effect give @s slow_falling 1 0 true
#Heart of the Sea
execute as @a[advancements={gen:passive={heart_of_the_sea=true}}] at @s if block ~ ~ ~ water run effect give @s conduit_power 6 0 true
#Sea Born
execute as @a[advancements={gen:passive={sea_born=true}}] at @s if block ~ ~ ~ water run effect give @s dolphins_grace 6 0 true
#Supreme Speed
execute as @a[advancements={gen:passive={supreme_speed=true}}] if predicate gen:utils/is_sprinting run effect give @s speed 1 4 true

schedule function gen:gear/internal/5tickupdate 5t replace