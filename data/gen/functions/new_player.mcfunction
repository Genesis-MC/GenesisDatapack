scoreboard players set @s gen.player.wandering_traitor_chance 20
title @s times 50 50 50
title @s title {"text":"Welcome To Genesis", "color":"#211905"}
function gen:guidebook/api/give
tag @s add ally

#Set player level
scoreboard players set @s gen.mobs.level 3