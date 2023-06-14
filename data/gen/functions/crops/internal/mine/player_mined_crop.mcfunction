#####################################################################
# crops/internal/mine/player_mined_crop.mcfunction
# written by Eroxen
#
# Called on a player that broke a custom crop at the location that the crop was
# Gets called before loot is dropped and before the entity is killed
# Storage context:
# - gen:crops :
#   - crop_data : broken crop's crop data
#   - crop_definition : broken crop's crop definition
# Scoreboard context:
# - gen.crops.calc :
#   - #loot_table_bonus : bonus to apply to loot drops of adult crops
#####################################################################

execute if predicate gen:crops/holding_fortune_tool store result score #fortune_level gen.crops.calc run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:fortune"}].lvl 1
execute if predicate gen:crops/holding_fortune_tool run scoreboard players operation #loot_table_bonus gen.crops.calc += #fortune_level gen.crops.calc

execute if data storage gen:crops crop_data{fully_grown:1b} run function gen:crops/internal/mine/apply_player_xp