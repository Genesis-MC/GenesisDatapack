data modify storage gen:core interactor set from entity @s {}
scoreboard players set #rclick_responder gen.temp 0
execute store result score #current_time gen.temp run time query gametime

tag @e[type=interaction,tag=gen.interaction.rclick_responder,distance=..8] remove gen.interaction.rclick_responder
execute as @e[type=interaction,tag=gen.interaction,predicate=gen:core/interaction/rclicked,distance=..8] at @s run function gen:core/internal/interaction/verify_rclick

execute if score #rclick_responder gen.temp matches 0 run return 0

execute as @e[type=interaction,tag=gen.interaction.rclick_responder,distance=..8,limit=1] at @s run function gen:core/internal/interaction/get_rclicked