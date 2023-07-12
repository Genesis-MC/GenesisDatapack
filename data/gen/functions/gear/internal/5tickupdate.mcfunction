
execute as @a store result score @s gen.passive.ylvl run data get entity @s Pos[1]
execute as @a store result score @s gen.passive.hunger run data get entity @s foodLevel
execute as @a store result score @s gen.passive.health run data get entity @s Health

#UnfetteredI
execute as @a[advancements={gen:passive={unfetteredI=true}}] run function gen:gear/internal/passives/unfettered1
#UnfetteredII
execute as @a[advancements={gen:passive={unfetteredII=true}}] run function gen:gear/internal/passives/unfettered2
#Heart of the Sea
execute as @a[advancements={gen:passive={heart_of_the_sea=true}}] if predicate gen:utils/in_water run effect give @s conduit_power 6 0 false
#Sea Born
execute as @a[advancements={gen:passive={sea_born=true}}] if predicate gen:utils/in_water run effect give @s dolphins_grace 6 0 false
schedule function gen:gear/internal/5tickupdate 5t replace