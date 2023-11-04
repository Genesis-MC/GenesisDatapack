#####################################################################
# workstation/api/right_clicked.mcfunction
# written by Eroxen
#
# Called on the interaction of work stations that are right-clicked by a player.
# on vehicle = item display
# on vehicle on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
#####################################################################

execute if entity @s[tag=gen.workstation.type.cooking_pot] run function gen:workstation/cooking_pot/clicked_right