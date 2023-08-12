data modify storage gen:menu lore.amulet set value []
##########################################
execute if score @s gen.stat.speed matches 1..9 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.speed.1","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.speed"}}]}'
execute if score @s gen.stat.speed matches 10..99 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.speed.2","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.speed"}}]}'
execute if score @s gen.stat.speed matches 100..999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.speed.3","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.speed"}}]}'
execute if score @s gen.stat.speed matches 1000..9999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.speed.4","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.speed"}}]}'
##########################################
execute if score @s gen.stat.artifact_power matches 1..9 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.artifact_power.1","fallback": "ARTIFACT POWER:","with": [{"score": {"name": "@s","objective": "gen.stat.artifact_power"}}]}'
execute if score @s gen.stat.artifact_power matches 10..99 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.artifact_power.2","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.artifact_power"}}]}'
execute if score @s gen.stat.artifact_power matches 100..999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.artifact_power.3","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.artifact_power"}}]}'
execute if score @s gen.stat.artifact_power matches 1000..9999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.artifact_power.4","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.artifact_power"}}]}'
##########################################
execute if score @s gen.stat.luck matches 1..9 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.luck.1","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.luck"}}]}'
execute if score @s gen.stat.luck matches 10..99 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.luck.2","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.luck"}}]}'
execute if score @s gen.stat.luck matches 100..999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.luck.3","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.luck"}}]}'
execute if score @s gen.stat.luck matches 1000..9999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.luck.4","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.luck"}}]}'
##########################################
execute if score @s gen.stat.ability_haste matches 1..9 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.ability_haste.1","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.ability_haste"}}]}'
execute if score @s gen.stat.ability_haste matches 10..99 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.ability_haste.2","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.ability_haste"}}]}'
execute if score @s gen.stat.ability_haste matches 100..999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.ability_haste.3","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.ability_haste"}}]}'
execute if score @s gen.stat.ability_haste matches 1000..9999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.ability_haste.4","fallback": "PHYSICAL POWER","with": [{"score": {"name": "@s","objective": "gen.stat.ability_haste"}}]}'

execute if data storage gen:menu lore.amulet[0] run item modify entity 0001e4dd-0000-ca49-0002-425300000000 container.0 gen:menu/amulet/append_lore
execute if data storage gen:menu lore.amulet[0] run item modify entity 0001e4dd-0000-ca49-0002-425300000000 container.0 gen:lore_add_newline
