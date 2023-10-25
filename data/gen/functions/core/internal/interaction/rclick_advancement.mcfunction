advancement revoke @s only gen:core/rclick_interaction
execute unless score use_interaction_advancements gen.config matches 1 run return 0
execute at @s anchored eyes positioned ^ ^ ^4 run function gen:core/internal/interaction/player_rclick_search