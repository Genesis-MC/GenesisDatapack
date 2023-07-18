#Runs 4 times every second to mitigate lag
execute store result score .player_count gen.world if entity @a

execute as @a[scores={gen.deathCount=1..}] run function gen:player_events/player_died

schedule function gen:core/internal/delay 5t