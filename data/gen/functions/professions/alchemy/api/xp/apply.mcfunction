scoreboard players operation @s gen.profession.alchemy.xp += #xp gen.professions

scoreboard players set #required_xp gen.professions 50
scoreboard players set #12 gen.professions 12
scoreboard players set #10 gen.professions 10
scoreboard players operation #lvl gen.professions = @s gen.profession.alchemy.level

scoreboard players operation #lvl gen.professions *= #lvl gen.professions
scoreboard players operation #lvl gen.professions /= #12 gen.professions
scoreboard players operation #required_xp gen.professions *= #lvl gen.professions
scoreboard players operation #required_xp gen.professions += #10 gen.professions
tellraw @a {"score":{"name":"#required_xp","objective":"gen.professions"},"color":"yellow"}
scoreboard players set #xp gen.professions 0
execute if score @s gen.profession.alchemy.xp >= #required_xp gen.professions run function gen:professions/alchemy/internal/levelup
