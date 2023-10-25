#####################################################################
# workstation/api/suffer.mcfunction
# written by Eroxen
#
# Must be called on the root entity of a workstation. When called,
# causes the workstation to increase its "anguish" score, which
# causes the workstation to make progress towards breaking
# (similar to armour stands, boats, minecarts etc.)
#####################################################################

scoreboard players set .suffering_exists gen.workstation 1
tag @s add gen.workstation.suffering
scoreboard players add @s gen.workstation.anguish 15
function gen:workstation/internal/suffer/shake1
scoreboard players set @s gen.workstation.shake 5
execute if score @s gen.workstation.anguish matches 25.. run function gen:workstation/api/destroy