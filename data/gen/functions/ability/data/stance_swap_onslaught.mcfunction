#0 mana cost

execute if entity @s[tag=!gen.active.stance_swap_onslaught] run scoreboard players set #temp gen.temp 1

execute if score #temp gen.temp matches 1 run function gen:gear/internal/passives/increase/stance_swap_onslaught
execute unless score #temp gen.temp matches 1 run function gen:gear/internal/passives/decrease/stance_swap_onslaught

particle totem_of_undying ~ ~1 ~ 0.6 0.4 0.6 0 25
scoreboard players reset #temp gen.temp

#5 sec cooldown
scoreboard players set .cooldown gen.ability 100