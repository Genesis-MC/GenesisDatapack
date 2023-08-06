
#Triggers when world is first generated, spawns bedrock construct at worldspawn for global variable tracking purposes
execute store result score @s gen.world_time run time query gametime

schedule function gen:core/internal/worldtimeupdater 1d