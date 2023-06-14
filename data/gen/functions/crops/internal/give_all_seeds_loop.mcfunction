data modify storage gen:core give_item set from storage gen:crops give_all_seeds[0]
function gen:core/api/item/give
data remove storage gen:crops give_all_seeds[0]
execute if data storage gen:crops give_all_seeds[0] run function gen:crops/internal/give_all_seeds_loop