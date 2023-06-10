#####################################################################
# crops/api/call_on_sunflower_item.mcfunction
# written by Eroxen
#
# Gets called once on any Sunflower item
# Storage context :
# - gen:core :
#   - ground_item : ItemStack
#####################################################################

execute if predicate gen:crops/valid_crop_block_configuration align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=item_display,tag=gen.crops.crop_entity,distance=..0.1] run function gen:crops/internal/bonemeal_call_on_item
execute if predicate gen:crops/mined_crop_block_configuration align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=item_display,tag=gen.crops.crop_entity,distance=..0.1] run function gen:crops/internal/mine_call_on_item

execute unless predicate gen:crops/valid_crop_block_configuration align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=item_display,tag=gen.crops.crop_entity,distance=..0.1] run function gen:crops/internal/invalid_bonemeal_call_on_item