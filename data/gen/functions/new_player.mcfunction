scoreboard players set @s gen.player.wandering_traitor_chance 20
loot give @s loot gen:gear/tools/lapis_prism
function gen:guidebook/api/give_preface
tag @s add gen.ally

#Set player level
scoreboard players set @s gen.mobs.level 3

# initialize mana
scoreboard players set @s gen.stat.mana_regen 15
scoreboard players set @s gen.stat.mana_pool 100
scoreboard players set @s gen.mana.current.real 100
scoreboard players set @s gen.mana.current 10000
scoreboard players set @s gen.mana.max 10000
scoreboard players set @s gen.mana.display 1565656565
