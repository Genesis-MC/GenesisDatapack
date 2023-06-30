data modify storage gen:menu lore.amulet set value []
##########################################
execute if score @s gen.stat.physical_power matches 1..9 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.physical_power.1","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.physical_power"}}]}'
execute if score @s gen.stat.physical_power matches 10..99 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.physical_power.2","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.physical_power"}}]}'
execute if score @s gen.stat.physical_power matches 100..999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.physical_power.3","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.physical_power"}}]}'
execute if score @s gen.stat.physical_power matches 1000..9999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.physical_power.4","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.physical_power"}}]}'
##########################################
execute if score @s gen.stat.magic_power matches 1..9 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.magic_power.1","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.magic_power"}}]}'
execute if score @s gen.stat.magic_power matches 10..99 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.magic_power.2","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.magic_power"}}]}'
execute if score @s gen.stat.magic_power matches 100..999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.magic_power.3","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.magic_power"}}]}'
execute if score @s gen.stat.magic_power matches 1000..9999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.magic_power.4","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.magic_power"}}]}'
##########################################
execute if score @s gen.stat.attack_speed matches 1..9 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.attack_speed.1","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.attack_speed"}}]}'
execute if score @s gen.stat.attack_speed matches 10..99 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.attack_speed.2","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.attack_speed"}}]}'
execute if score @s gen.stat.attack_speed matches 100..999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.attack_speed.3","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.attack_speed"}}]}'
execute if score @s gen.stat.attack_speed matches 1000..9999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.attack_speed.4","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.attack_speed"}}]}'

execute if data storage gen:menu lore.amulet[0] run item modify entity 0001e4dd-0000-ca49-0002-425300000000 container.0 gen:menu/amulet/append_lore
execute if data storage gen:menu lore.amulet[0] run item modify entity 0001e4dd-0000-ca49-0002-425300000000 container.0 gen:lore_add_newline
