
execute at @s run particle electric_spark ~ ~ ~ 1 1 1 0 100
data merge entity @s {HandItems:[{id:"minecraft:air",Count:1b},{}]}
execute if entity @s[tag=Tier4] run tag @s add Tier5
execute if entity @s[tag=Tier4] run data merge entity @s {CustomName:'{"text":"Tier 5","bold":true,"italic":false}',DisabledSlots:4144959}
execute if entity @s[tag=Tier4] run tag @s remove Tier4

execute if entity @s[tag=Tier3] run tag @s add Tier4
execute if entity @s[tag=Tier3] run data merge entity @s {CustomName:'{"text":"Tier 4","bold":true,"italic":false}'}
execute if entity @s[tag=Tier3] run tag @s remove Tier3

execute if entity @s[tag=Tier2] run tag @s add Tier3
execute if entity @s[tag=Tier2] run data merge entity @s {CustomName:'{"text":"Tier 3","bold":true,"italic":false}'}
execute if entity @s[tag=Tier2] run tag @s remove Tier2

execute if entity @s[tag=Tier1] run tag @s add Tier2
execute if entity @s[tag=Tier1] run data merge entity @s {CustomName:'{"text":"Tier 2","bold":true,"italic":false}'}
execute if entity @s[tag=Tier1] run tag @s remove Tier1