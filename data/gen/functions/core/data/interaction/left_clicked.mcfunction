#####################################################################
# core/data/interaction/left_clicked.mcfunction
# written by Eroxen
#
# Called on interactions with the tag gen.interaction when left-clicked
# by the player. Each player can only click one interaction in a tick,
# and if the interaction happened more than 3 ticks ago (was not detected
# previously due to the datapack being disabled) it is discarded.
#####################################################################

execute if entity @s[tag=gen.workstation.interaction] run function gen:workstation/api/left_clicked