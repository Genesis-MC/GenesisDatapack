#####################################################################
# crops/api/give_all_seeds.mcfunction
# written by Eroxen
#
# Gives the executing player seeds for all registered crops.
# Does not give debug items.
#####################################################################

data modify storage gen:crops give_all_seeds set value []
data modify storage gen:crops give_all_seeds append from storage gen:crops registry[].seed_item
data remove storage gen:crops give_all_seeds[{tag:{genesis:{debug_item:1b}}}]
execute if data storage gen:crops give_all_seeds[0] run function gen:crops/internal/give_all_seeds_loop