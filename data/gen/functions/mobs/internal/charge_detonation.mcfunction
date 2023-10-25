
execute if entity @s[tag=gen.charge.everfrost] run effect give @a[distance=..4] slowness 3 4 false
execute if entity @s[tag=gen.charge.everfrost] run particle block packed_ice ~ ~ ~ 2 0.3 2 0 80
execute if entity @s[tag=gen.charge.everfrost] run particle dust 0 1 1 1 ~ ~ ~ 2 0.3 2 0 80
execute if entity @s[tag=gen.charge.everfrost] as @a[distance=..4] run damage @s 6 freeze

kill @s