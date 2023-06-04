
#Triggers when world is first generated, spawns bedrock construct at worldspawn for global variable tracking purposes
execute as @p[sort=nearest,limit=1] store result score @s worldTime run time query gametime
execute as @p[sort=nearest,limit=1] at @s if score @s worldTime matches 10 run function gen:spawning/internal/spawngenesis


