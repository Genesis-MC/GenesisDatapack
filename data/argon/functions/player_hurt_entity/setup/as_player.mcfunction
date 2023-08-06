# mc-argon v1.0.2 by PuckiSilver
tag @s add argon.player
execute as @e[type=!#argon:non_living, predicate=argon:not_setup, sort=nearest] run function argon:player_hurt_entity/setup/as_entity
tag @s remove argon.player
execute if score #found argon.id matches 0 run scoreboard players set #found argon.id 2
execute if score #found argon.id matches 2 run function #argon:player_killed_entity
# mc-argon v1.0.2 by PuckiSilver
