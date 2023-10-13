scoreboard players set #verified_lclick gen.temp 0

execute store result score #attack_time gen.temp run data get entity @s attack.timestamp 1
scoreboard players operation #attack_time gen.temp -= #current_time gen.temp

data modify storage gen:core UUID set from storage gen:core interactor.UUID
execute store success score #different gen.temp run data modify storage gen:core UUID set from entity @s attack.player

execute if score #attack_time gen.temp matches -2..0 if score #different gen.temp matches 0 run scoreboard players set #verified_lclick gen.temp 1

execute if score #attack_time gen.temp matches ..-3 run data remove entity @s attack
execute if score #verified_lclick gen.temp matches 1 if score #lclick_responder gen.temp matches 0 run tag @s add gen.interaction.lclick_responder
execute if score #verified_lclick gen.temp matches 1 run scoreboard players set #lclick_responder gen.temp 1