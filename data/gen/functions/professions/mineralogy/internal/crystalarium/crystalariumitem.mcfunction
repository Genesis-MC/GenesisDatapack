
#Executes as Crystal Node; Checks if block below is Amethyst Block; If so, runs spawncrystalarium function

execute if block ~ ~-1 ~ amethyst_block align xyz run particle enchanted_hit ~.5 ~.3 ~.5 0.3 0.1 0.3 0 15 normal
execute if block ~ ~-1 ~ amethyst_block run kill @s
execute if block ~ ~-1 ~ amethyst_block run function gen:professions/mineralogy/internal/crystalarium/spawncrystalarium
