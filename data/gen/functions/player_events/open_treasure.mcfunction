# Called by scan_head.mcfunction when a treasure player head is placed, prompting the loot to drop

particle firework ~ ~ ~ 0 0 0 0.3 30
particle explosion ~ ~ ~ 0 0 0 0 2
playsound entity.firework_rocket.large_blast ambient @a ~ ~ ~ 1 2
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.lootcrate.heart_of_the_depths"}} run loot spawn ~ ~ ~ loot gen:treasure/heart_of_the_depths_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.lootcrate.deepslate_mineral_cache"}} run loot spawn ~ ~ ~ loot gen:treasure/deepslate_mineral_cache_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.lootcrate.pirates_bounty"}} run loot spawn ~ ~ ~ loot gen:treasure/pirates_bounty_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.lootcrate.salt_node"}} run loot spawn ~ ~ ~ loot gen:treasure/salt_node_loot

fill ~ ~ ~ ~ ~ ~ air 