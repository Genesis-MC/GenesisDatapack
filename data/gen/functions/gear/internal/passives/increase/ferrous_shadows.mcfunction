
scoreboard players add @s gen.stat.armor 30
scoreboard players add @s gen.stat.armor_toughness 30
function gen:gear/data/stat/update/armor
function gen:gear/data/stat/update/armor_toughness
scoreboard players set @s gen.passive.ferrshadow_cd 6
function gen:particles/circles/ferrous_shadows
function gen:menu/internal/amulet/update_lore
tag @s add gen.passive.ferrous_shadows