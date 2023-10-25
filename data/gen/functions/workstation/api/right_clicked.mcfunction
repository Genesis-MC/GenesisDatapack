#####################################################################
# workstation/api/right_clicked.mcfunction
# written by Eroxen
#
# Called on the interaction of work stations that are right-clicked by a player.
#####################################################################

execute if entity @s[tag=gen.workstation.type.cooking_pot] run function gen:workstation/cooking_pot/clicked