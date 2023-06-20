setblock ~ ~1 ~ moving_piston
setblock ~ ~ ~ sunflower[half=lower]
execute store result score #is_shroom gen.math if data entity @s SelectedItem{tag:{gen:{mycology:{}}}}
execute if score #is_shroom gen.math matches 1 run data modify storage gen:profession/mycology Seed set from entity @s SelectedItem.tag.gen.mycology
execute summon item_display run function gen:crops/internal/place/summon_crop_entity