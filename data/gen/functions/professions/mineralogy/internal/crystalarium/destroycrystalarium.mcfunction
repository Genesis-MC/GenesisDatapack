#Checks if crystalarium's amethyst block was destroyed; If so, destroys the crystalarium
execute at @s unless block ~ ~ ~ amethyst_block positioned ~-.1 ~ ~-.1 run kill @e[type=block_display,limit=2,sort=nearest]
execute at @s unless block ~ ~ ~ amethyst_block run kill @s