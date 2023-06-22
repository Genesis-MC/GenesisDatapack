
#STILL IN TESTING AND NEEDS POLISHING
#/function gen:professions/mineralogy/internal/crystalarium/spawncrystalarium

execute align xyz run summon block_display ~.025 ~ ~.025 {NoGravity:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.95f,.95f,.95f]},block_state:{Name:"minecraft:glass"}}
execute align xyz run summon block_display ~ ~.001 ~ {NoGravity:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,.001f,1f]},block_state:{Name:"minecraft:budding_amethyst"}}
execute align xyz run summon armor_stand ~.5 ~-1 ~.5 {Tags:["Crystalarium","normCrystalarium","T1Crystalarium"],NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:0b,DisabledSlots:4144959}