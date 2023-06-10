scoreboard players add @s gen.profession.cooking.level 1
scoreboard players operation @s gen.profession.cooking.xp -= #required_xp gen.professions
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
tellraw @p {"translate":"genesis.notification.profession.levelup.cooking","with":[{"score":{"name":"@s","objective":"gen.profession.cooking.level"},"color":"yellow"},{"score":{"name":"#required_xp","objective":"gen.professions"},"color":"yellow"}]}
execute if score @s gen.profession.cooking.xp >= #required_xp gen.professions run function gen:professions/cooking/api/xp/apply
