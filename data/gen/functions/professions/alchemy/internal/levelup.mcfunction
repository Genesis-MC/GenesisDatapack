scoreboard players add @s gen.profession.alchemy.level 1
scoreboard players operation @s gen.profession.alchemy.xp -= #required_xp gen.professions
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
tellraw @p {"translate":"genesis.notification.profession.levelup.alchemy","with":[{"score":{"name":"@s","objective":"gen.profession.alchemy.level"}},{"score":{"name":"#required_xp","objective":"gen.professions"}}]}
execute if score @s gen.profession.alchemy.xp >= #required_xp gen.professions run function gen:professions/alchemy/api/xp/apply
