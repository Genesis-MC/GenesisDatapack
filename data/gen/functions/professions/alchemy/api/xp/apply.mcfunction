scoreboard players set #required_xp gen.professions 0
scoreboard players set #required_xp gen.professions 10
scoreboard players operation @s gen.profession.alchemy.xp += #xp gen.professions
scoreboard players operation #required_xp gen.professions *= @s gen.profession.alchemy.level
scoreboard players set #xp gen.professions 0
execute if score @s gen.profession.alchemy.xp >= #required_xp gen.professions run function gen:professions/alchemy/internal/levelup
