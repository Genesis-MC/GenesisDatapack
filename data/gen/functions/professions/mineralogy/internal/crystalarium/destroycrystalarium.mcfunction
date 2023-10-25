#Checks if crystalarium's amethyst block was destroyed; If so, destroys the crystalarium
execute at @s positioned ~-.1 ~ ~-.1 run kill @e[type=block_display,limit=2,sort=nearest]
execute positioned ~ ~1 ~ run kill @e[distance=..1,limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},nbt=!{Item:{tag:{gen:{mineral:1b}}}}]
execute at @s run kill @s