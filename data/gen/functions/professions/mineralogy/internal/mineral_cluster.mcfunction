# Called by scan_head.mcfunction when a mineral cluster is placed, prompting the loot to drop

particle entity_effect ~ ~ ~ 0 0 0 0.3 30
playsound block.amethyst_cluster.break ambient @a ~ ~ ~ 1 0
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.1"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster1_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.2"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster2_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.3"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster3_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.4"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster4_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.5"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster5_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.6"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster6_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.7"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster7_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.8"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster8_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.9"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster9_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.10"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster10_loot
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"genesis.block.mrlcluster.11"}} run loot spawn ~ ~ ~ loot gen:treasure/mineral_clusters/mineral_cluster11_loot

fill ~ ~ ~ ~ ~ ~ air 