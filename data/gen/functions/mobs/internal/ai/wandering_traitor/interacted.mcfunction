tag @s add this
scoreboard players set #length gen.temp 30
execute as @s at @s anchored eyes run function gen:mobs/internal/ai/wandering_traitor/raycast
tag @s remove this
advancement revoke @s only gen:mobs/interacted_with_wandering_trader