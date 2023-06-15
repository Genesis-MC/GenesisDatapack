
#Triggers when world is first generated, spawns bedrock construct at worldspawn for global variable tracking purposes
execute as @p[sort=nearest,limit=1] store result score @s gen.world_time run time query gametime
execute as @p[sort=nearest,limit=1] at @s if score @s gen.world_time matches 20 run function gen:spawning/internal/spawngenesis

schedule function gen:core/internal/worldtimeupdater 1d