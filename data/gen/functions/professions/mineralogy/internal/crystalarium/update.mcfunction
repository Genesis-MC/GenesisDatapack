#Runs every second    gen:professions/mineralogy/internal/sectick.mcfunction

#Checks if armorstand is holding an enhancement crystal; If conditions are met than the crystalarium is upgraded +1 tier
execute if entity @s[nbt={HandItems:[{Count:1b},{}]}] run function gen:professions/mineralogy/internal/crystalarium/detect_held_item
#particles for aesthetics (insert sparkle emoji here)
execute if predicate gen:randomizer/random25 at @s run particle end_rod ~ ~1.2 ~ 0.2 0 0.2 0 1
