#####################################################################
# core/api/item/run_with_held_item.mcfunction
# written by Eroxen
#
# Runs a command with the executing player's held item as context.
# The held item is the mainhand by default, or the offhand if the
# mainhand is empty. If both hands are empty, the command is skipped.
#
# The result of the command determines how many items are resumed.
# e.g. if the command is a function that returns 0, no items are consumed.
# If it returns 1, 1 item is consumed, if it returns 2, 2 items are consumed etc.
#
# Creates storage context:
# - gen:core :
#   - run_with_item.item : ItemStack
#   - run_with_item.slot : "mainhand" or "offhand"
#
# Storage input:
# - gen:core :
#   - run_with_item.command : (string) command to run
#####################################################################

execute if predicate gen:core/item/empty_handed run return 0
execute if predicate gen:core/item/item_in_mainhand run data modify storage gen:core run_with_item.item set from entity @s SelectedItem
execute if predicate gen:core/item/item_in_mainhand run data modify storage gen:core run_with_item.slot set value "mainhand"
execute if predicate gen:core/item/only_in_offhand run data modify storage gen:core run_with_item.item set from entity @s Inventory[{Slot:-106b}]
execute if predicate gen:core/item/only_in_offhand run data modify storage gen:core run_with_item.slot set value "offhand"

function gen:core/internal/item/run_with_consume_item with storage gen:core run_with_item