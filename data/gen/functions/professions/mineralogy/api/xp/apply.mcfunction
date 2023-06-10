scoreboard players set #required_xp gen.professions 50
scoreboard players set #1 gen.professions 1
scoreboard players set #10 gen.professions 10
scoreboard players set #lvl gen.professions 50

scoreboard players operation @s gen.profession.mineralogy.xp += #xp gen.professions
scoreboard players operation #required_xp gen.professions *= @s gen.profession.mineralogy.level
scoreboard players operation #lvl gen.professions = @s gen.profession.mineralogy.level
scoreboard players operation #lvl gen.professions -= #1 gen.professions
scoreboard players operation #lvl gen.professions *= #10 gen.professions
scoreboard players operation #required_xp gen.professions += #lvl gen.professions
scoreboard players operation #required_xp gen.professions /= #10 gen.professions
scoreboard players operation #required_xp gen.professions *= #10 gen.professions

scoreboard players set #xp gen.professions 0
execute if score @s gen.profession.mineralogy.xp >= #required_xp gen.professions run function gen:professions/mineralogy/internal/levelup
