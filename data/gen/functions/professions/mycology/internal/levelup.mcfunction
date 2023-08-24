scoreboard players add @s gen.profession.mycology.level 1
scoreboard players operation @s gen.profession.mycology.xp -= #required_xp gen.mycology
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
tellraw @p {"translate":"genesis.notification.profession.levelup.mycology","with":[{"score":{"name":"@s","objective":"gen.profession.mycology.level"},"color":"yellow"},{"score":{"name":"#required_xp","objective":"gen.mycology"},"color":"yellow"}]}
execute if score @s gen.profession.mycology.xp >= #required_xp gen.mycology run function gen:professions/mycology/api/xp/apply
