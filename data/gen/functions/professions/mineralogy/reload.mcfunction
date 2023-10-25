
scoreboard objectives add gen.mined_amethyst mined:amethyst_block
tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Sucessfully reloaded","color":"green"},{"text":" professions/","color":"yellow"},{"text":"mineralogy","color":"gold"}] 

scoreboard objectives add gen.profession.mineralogy.xp dummy
scoreboard objectives add gen.profession.mineralogy.level dummy
scoreboard objectives add gen.profession.mineralogy.growth_level dummy
scoreboard objectives add gen.profession.mineralogy.broke_amethyst4 mined:amethyst_cluster
scoreboard objectives add gen.profession.mineralogy.broke_amethyst3 mined:large_amethyst_bud
scoreboard objectives add gen.profession.mineralogy.broke_amethyst2 mined:medium_amethyst_bud
scoreboard objectives add gen.profession.mineralogy.broke_amethyst1 mined:small_amethyst_bud

schedule function gen:professions/mineralogy/internal/sectick 1s replace
schedule function gen:professions/mineralogy/internal/mintick 360s replace