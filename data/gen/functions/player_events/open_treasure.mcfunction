# Called by scan_head.mcfunction when a treasure player head is placed, prompting the loot to drop

particle firework ~ ~ ~ 0 0 0 0.3 30
particle explosion ~ ~ ~ 0 0 0 0 2
playsound entity.firework_rocket.large_blast ambient @a ~ ~ ~ 1 2
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.lootcrate.",Id:[I;-455737959,-860729457,-1258616045,-406608575],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWM2NDlhMGJiMjY1OWQ4ZjAzNzBjOWRhMWQwMGIzMmI1NmQwOTg5Nzg4ZWJmZGY5ODQwMmNjYmYzZTk2OGE3NSJ9fX0="}]}}} run loot spawn ~ ~ ~ loot gen:treasure/heart_of_the_depths_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.lootcrate.",Id:[I;-455737959,-860729457,-1258616045,-406608575],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThlNjg0ODA3N2I1YmVmNzliZGFlMjBlMWJhNzdjMzVjZDVjN2QyOWRiNTkxZTg0N2JmMzBiODBhYzMwNGE0NyJ9fX0="}]}}} run loot spawn ~ ~ ~ loot gen:treasure/deepslate_mineral_cache_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.lootcrate.",Id:[I;-455737959,-860729457,-1258616045,-406608575],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQwNmU0NTMxOGU5YTRhNmJmZTEzMmYyMDJmZTNjZWFjMTVkMTFlYWVkYmVmMWViMDZhMzc2ZGI0MzMwOTBhOCJ9fX0="}]}}} run loot spawn ~ ~ ~ loot gen:treasure/pirates_bounty_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.lootcrate.",Id:[I;-455737959,-860729457,-1258616045,-406608575],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGU1MmFkYjhiZDNjZTdmODkwZWMxYzJhMDA3ZjUyODkyODExYWYwMWUyNTM3YWYwMTNhMWY3ZDZkMjBiNGY4NiJ9fX0="}]}}} run loot spawn ~ ~ ~ loot gen:treasure/salt_node_loot

fill ~ ~ ~ ~ ~ ~ air 