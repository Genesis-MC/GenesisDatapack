playsound minecraft:block.enchantment_table.use block @a[distance=..32]
particle minecraft:end_rod ~ ~0.5 ~ 0.3 0.3 0.3 0 20

data merge entity @s {NoGravity:1b,Invulnerable:1b}

execute if entity @s[tag=gen.structure.feature_marker.new.align_y] positioned ~ ~0.5 ~ align y run tp @s ~ ~ ~



tag @s remove gen.structure.feature_marker.new
tag @s remove gen.structure.feature_marker.new.align_y
tag @s add gen.structure.feature_marker
scoreboard players set @s gen.temp 1

function gen:structure/data/feature_marker/init