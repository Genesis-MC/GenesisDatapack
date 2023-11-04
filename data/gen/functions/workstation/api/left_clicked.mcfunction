#####################################################################
# workstation/api/left_clicked.mcfunction
# written by Eroxen
#
# Called on the interaction of work stations that are left-clicked by a player.
# on vehicle = item display
# on vehicle on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
#####################################################################

#scoreboard players set .suffering_exists gen.workstation 1
#tag @s add gen.workstation.suffering
#scoreboard players add @s gen.workstation.anguish 15
#function gen:workstation/internal/suffer/shake1
#scoreboard players set @s gen.workstation.shake 5
#execute if score @s gen.workstation.anguish matches 25.. run function gen:workstation/api/destroy
function gen:workstation/cooking_pot/clicked_left