# Argon v1.0.0 by PuckiSilver
execute if score #found argon.id matches 1 run return -1
execute on attacker if entity @s[type=player, tag=argon.player] run scoreboard players set #found argon.id 1
execute if score #found argon.id matches 0 run return -1
function #argon:player_hurt_entity
function argon:player_hurt_entity/setup/setup_id
# Argon v1.0.0 by PuckiSilver
