#Runs 4 times every second to mitigate lag
# @e[type=player] instead of @a to not select dead players ;p 
execute as @e[type=player,scores={gen.deathCount=1..}] run function gen:player_events/player_died

schedule function gen:core/internal/delay 5t