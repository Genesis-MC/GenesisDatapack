execute store result score #wlm gen.temp run data get storage gen:mobs read[-1].weight_level_mutliplier.value 100
scoreboard players operation #wlm2 gen.temp = #wlm gen.temp
scoreboard players operation #wlm gen.temp /= #100 gen.const
scoreboard players operation #wlm2 gen.temp %= #100 gen.const
item modify entity @s container.0 gen:mobs/format/egg/weight_level_multiplier