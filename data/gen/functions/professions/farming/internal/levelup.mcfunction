scoreboard players add @s gen.profession.farming.level 1
scoreboard players operation @s gen.profession.farming.xp -= #required_xp gen.professions
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
tellraw @p {"translate":"genesis.notification.profession.levelup.farming","with":[{"score":{"name":"@s","objective":"gen.profession.farming.level"},"color":"yellow"},{"score":{"name":"#required_xp","objective":"gen.professions"},"color":"yellow"}]}
execute if score @s gen.profession.farming.xp >= #required_xp gen.professions run function gen:professions/farming/api/xp/apply
