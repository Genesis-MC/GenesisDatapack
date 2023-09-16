#data modify storage gen:temp macro.level set value 0
#execute store result storage gen:temp macro.level int 1 run scoreboard players get .level gen.world
#execute if score function gen:mobs/internal/registry/filter/level/macro with storage gen:temp macro