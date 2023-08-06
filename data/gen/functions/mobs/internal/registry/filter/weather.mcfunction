execute if score .is_raining gen.world matches 1 run data remove storage gen:mobs read[{requirements:{weather:{raining:0b}}}]
execute if score .is_thundering gen.world matches 1 run data remove storage gen:mobs read[{requirements:{weather:{thundering:0b}}}]

execute if score .is_raining gen.world matches 0 run data remove storage gen:mobs read[{requirements:{weather:{raining:1b}}}]
execute if score .is_thundering gen.world matches 0 run data remove storage gen:mobs read[{requirements:{weather:{thundering:1b}}}]
# removing the key so less data to copy
data remove storage gen:mobs read[].requirements.weather