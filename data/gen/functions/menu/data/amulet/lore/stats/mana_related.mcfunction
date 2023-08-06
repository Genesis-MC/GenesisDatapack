data modify storage gen:menu lore.amulet set value []
##########################################
execute if score @s gen.stat.mana_pool matches 1..9 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.mana_pool.1","fallback": "MANA POOL","with": [{"score": {"name": "@s","objective": "gen.stat.mana_pool"}}]}'
execute if score @s gen.stat.mana_pool matches 10..99 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.mana_pool.2","fallback": "MANA POOL","with": [{"score": {"name": "@s","objective": "gen.stat.mana_pool"}}]}'
execute if score @s gen.stat.mana_pool matches 100..999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.mana_pool.3","fallback": "MANA POOL","with": [{"score": {"name": "@s","objective": "gen.stat.mana_pool"}}]}'
execute if score @s gen.stat.mana_pool matches 1000..9999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.mana_pool.4","fallback": "MANA POOL","with": [{"score": {"name": "@s","objective": "gen.stat.mana_pool"}}]}'
##########################################
execute if score @s gen.stat.mana_regen matches 1..9 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.mana_regen.1","fallback": "MANA REGEN:","with": [{"score": {"name": "@s","objective": "gen.stat.mana_regen"}}]}'
execute if score @s gen.stat.mana_regen matches 10..99 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.mana_regen.2","fallback": "MANA REGEN:","with": [{"score": {"name": "@s","objective": "gen.stat.mana_regen"}}]}'
execute if score @s gen.stat.mana_regen matches 100..999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.mana_regen.3","fallback": "MANA REGEN:","with": [{"score": {"name": "@s","objective": "gen.stat.mana_regen"}}]}'
execute if score @s gen.stat.mana_regen matches 1000..9999 run data modify storage gen:menu lore.amulet append value '{"translate": "genesis.stats.wrapper.mana_regen.4","fallback": "MANA REGEN:","with": [{"score": {"name": "@s","objective": "gen.stat.mana_regen"}}]}'

execute if data storage gen:menu lore.amulet[0] run item modify entity 0001e4dd-0000-ca49-0002-425300000000 container.0 gen:menu/amulet/append_lore
execute if data storage gen:menu lore.amulet[0] run item modify entity 0001e4dd-0000-ca49-0002-425300000000 container.0 gen:lore_add_newline
