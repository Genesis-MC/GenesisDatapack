#data modify storage gen:temp macro.level set value 0
#scoreboard players operation #loop gen.temp = .level gen.world
#function gen:mobs/internal/registry/filter/level/loop