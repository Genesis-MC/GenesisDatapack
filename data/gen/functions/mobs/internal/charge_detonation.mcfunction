
execute if entity @s[tag=gen.charge.everfrost] run effect give @a[distance=..5] slowness 3 4 false
execute if entity @s[tag=gen.charge.everfrost] run particle block packed_ice ~ ~ ~ 2 0.3 2 0 80
execute if entity @s[tag=gen.charge.everfrost] run particle dust 0 1 1 1 ~ ~ ~ 2 0.3 2 0 80
execute if entity @s[tag=gen.charge.everfrost] as @a[distance=..4] run damage @s 6 freeze

execute if entity @s[tag=gen.charge.soul] run effect give @a[distance=..5] wither 4 2 true
execute if entity @s[tag=gen.charge.soul] run particle soul ~ ~ ~ 2 0.3 2 0 50
execute if entity @s[tag=gen.charge.soul] run particle smoke ~ ~ ~ 2 0.3 2 0 80

kill @s