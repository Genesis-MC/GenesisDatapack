
#Function is called when the world is first loaded. Spawns in genesis armor stand, used for storing global variables such as world level
setblock ~ ~-1 ~ bedrock 
setblock ~ ~-3 ~ bedrock 
setblock ~ ~-2 ~1 bedrock 
setblock ~ ~-2 ~-1 bedrock 
setblock ~1 ~-2 ~ bedrock 
setblock ~-1 ~-2 ~ bedrock 
execute align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["GenesisArmorstand"]}
scoreboard players add @e[type=armor_stand,tag=GenesisArmorstand,limit=1] worldlvl 3