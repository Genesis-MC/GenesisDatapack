execute store result score .halfHealth gen.stat.health run attribute @s minecraft:generic.max_health get 5
particle dust 200 0 0 1 ~ ~ ~ 0.5 1.25 0.5 1 100 normal
execute if entity @s[scores={gen.mobs.phases=0}] if score $current gen.stat.health <= .halfHealth gen.stat.health run function gen:mobs/internal/mobs/demon/phase/half_health
