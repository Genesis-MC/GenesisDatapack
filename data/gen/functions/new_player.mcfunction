scoreboard players set @s gen.player.wandering_traitor_chance 20
loot give @s loot gen:gear/tools/lapis_prism
function gen:guidebook/api/give_preface
tag @s add ally

#Set player level
scoreboard players set @s gen.mobs.level 3