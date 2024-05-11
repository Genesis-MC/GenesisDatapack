#Runs every second    gen:professions/mineralogy/internal/sectick.mcfunction

#Checks if armorstand is holding an enhancement crystal; If conditions are met than the crystalarium is upgraded +1 tier
execute if entity @s[nbt={HandItems:[{Count:1b},{}]}] run function gen:professions/mineralogy/internal/crystalarium/detect_held_item
#particles for aesthetics (insert sparkle emoji here)
execute if entity @s[tag=normCrystalarium] at @s if entity @a[distance=..8] if predicate gen:randomizer/random25 run particle end_rod ~ ~1.2 ~ 0.2 0 0.2 0 1
execute if entity @s[tag=pureCrystalarium] at @s if entity @a[distance=..8] if predicate gen:randomizer/random40 run particle instant_effect ~ ~1.2 ~ 0.2 0 0.2 0 1
execute at @s if entity @a[distance=..8] run data modify entity @s CustomNameVisible set value 1b
execute at @s unless entity @a[distance=..8] run data modify entity @s CustomNameVisible set value 0b