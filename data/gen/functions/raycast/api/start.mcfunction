$scoreboard players set #dist gen.raycast $(distance)
$data modify storage gen:raycast callback set value $(callback)
scoreboard players set #hit gen.raycast 0

tag @s add gen.raycaster
execute at @s anchored eyes positioned ^ ^ ^ run function gen:raycast/internal/recursive
tag @s remove gen.raycaster
