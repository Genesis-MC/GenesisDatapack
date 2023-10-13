scoreboard players set #verified_rclick gen.temp 0

execute store result score #interaction_time gen.temp run data get entity @s interaction.timestamp 1
scoreboard players operation #interaction_time gen.temp -= #current_time gen.temp

data modify storage gen:core UUID set from storage gen:core interactor.UUID
execute store success score #different gen.temp run data modify storage gen:core UUID set from entity @s interaction.player

execute if score #interaction_time gen.temp matches -2..0 if score #different gen.temp matches 0 run scoreboard players set #verified_rclick gen.temp 1

execute if score #interaction_time gen.temp matches ..-3 run data remove entity @s interaction
execute if score #verified_rclick gen.temp matches 1 if score #rclick_responder gen.temp matches 0 run tag @s add gen.interaction.rclick_responder
execute if score #verified_rclick gen.temp matches 1 run scoreboard players set #rclick_responder gen.temp 1