
#Function is called when the world is first loaded. Spawns in genesis armor stand, used for storing global variables such as world level
setblock ~ ~-1 ~ bedrock 
setblock ~ ~-3 ~ bedrock 
setblock ~ ~-2 ~1 bedrock 
setblock ~ ~-2 ~-1 bedrock 
setblock ~1 ~-2 ~ bedrock 
setblock ~-1 ~-2 ~ bedrock 
scoreboard players set #worldlvltracker genesis.world_lvl 3