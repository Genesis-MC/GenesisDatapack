data modify storage gen:crops seed_item set from storage gen:crops give_all_seeds[0]
loot give @s loot gen:crops/player_head_copy_seed_nbt
data remove storage gen:crops give_all_seeds[0]
execute if data storage gen:crops give_all_seeds[0] run function gen:crops/internal/give_all_seeds_loop