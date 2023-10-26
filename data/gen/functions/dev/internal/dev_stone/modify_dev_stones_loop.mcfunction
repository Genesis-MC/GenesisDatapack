execute store result score #slot gen.temp run data get storage gen:temp to_modify[0].Slot
data remove storage gen:temp to_modify[0]
function gen:core/api/item/set_nbt_at_player_slot
execute if data storage gen:temp to_modify[0] run function gen:dev/internal/dev_stone/modify_dev_stones_loop