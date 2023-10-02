execute as @e[tag=gen.basalt_drudge] at @s if entity @p[distance=..4] unless entity @e[type=area_effect_cloud,distance=..2] run summon area_effect_cloud ~ ~ ~ {Particle:"block basalt",Radius:4f,Duration:100,effects:[{id:"minecraft:slowness",amplifier:2b,duration:60}]}

schedule function gen:mobs/internal/passive_abilities 1s replace