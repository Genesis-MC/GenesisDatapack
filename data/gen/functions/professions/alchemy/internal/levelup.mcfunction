scoreboard players add @s gen.profession.alchemy.level 1
scoreboard players operation @s gen.profession.alchemy.xp -= #required_xp gen.professions
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
tellraw @s ["",{"text":"Alchemy -> Leveled up to alchemy level "},{"score":{"name":"@s","objective":"gen.profession.alchemy.level"},"color":"yellow"},{"text":"! You need "},{"score":{"name":"#required_xp","objective":"gen.professions"},"color":"yellow"},{"text":" XP to reach the next level"}]
execute if score @s gen.profession.alchemy.xp >= #required_xp gen.professions run function gen:professions/alchemy/api/xp/apply
