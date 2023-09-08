$summon minecraft:$(base_entity) ~ ~ ~ {$(entity_data)}
$execute as @e[type=minecraft:$(base_entity,limit=1,distance=..0.01)] run say @s 