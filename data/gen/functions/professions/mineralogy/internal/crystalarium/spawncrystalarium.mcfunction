
#/function gen:professions/mineralogy/internal/crystalarium/spawncrystalarium
execute unless block ~ ~-1 ~ amethyst_block run particle angry_villager
execute unless block ~ ~-1 ~ amethyst_block run function gen:phead/api/cannot_place
execute unless block ~ ~-1 ~ amethyst_block run return 0

fill ~ ~ ~ ~ ~ ~ air
execute align xyz run summon block_display ~.025 ~ ~.025 {NoGravity:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.95f,.95f,.95f]},block_state:{Name:"minecraft:glass"}}
execute align xyz run summon block_display ~ ~.001 ~ {NoGravity:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,.001f,1f]},block_state:{Name:"minecraft:budding_amethyst"}}
execute align xyz run summon armor_stand ~.5 ~-1 ~.5 {Tags:["Crystalarium","normCrystalarium","Tier1"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ShowArms:1b,CustomNameVisible:0b,CustomName:'{"translate":"Tier 1","bold":true,"italic":false}',DisabledSlots:4079422}
execute positioned ~ ~-1 ~ run scoreboard players set @e[distance=..0.9,sort=nearest,limit=1,tag=Crystalarium] gen.profession.mineralogy.growth_level 0