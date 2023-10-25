#####################################################################
# crops/api/clicked_by_dev_stone.mcfunction
# written by Eroxen
#
# Gets called by the player using a Dev Stone at the centre of the block
# Player has "gen.raycaster" tag
#####################################################################

execute as @e[type=item_display,tag=gen.crops.crop_entity,distance=..0.1,limit=1] run function gen:crops/internal/dev_stone/describe_self