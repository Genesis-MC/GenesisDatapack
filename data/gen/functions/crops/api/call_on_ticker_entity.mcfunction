#####################################################################
# crops/api/call_on_ticker_entity.mcfunction
# written by Eroxen
#
# Gets called on any ticker entity that has passed its scheduled time
#####################################################################
particle flame ~ ~0.5 ~ 0 0 0 0 1 normal @a[tag=gen.dev.debug,distance=..32]

execute as @e[type=item_display,tag=gen.crops.crop_entity.growing,distance=..2.2] if score @s gen.crops.growth_schedule <= .gametime gen.time at @s run function gen:crops/internal/grow/tick

scoreboard players operation #new_schedule gen.crops.calc = @e[type=item_display,tag=gen.crops.crop_entity.growing,distance=..2.2,limit=1] gen.crops.growth_schedule
execute as @e[type=item_display,tag=gen.crops.crop_entity.growing,distance=..2.2] run scoreboard players operation #new_schedule gen.crops.calc < @s gen.crops.growth_schedule
scoreboard players operation @s gen.time.schedule = #new_schedule gen.crops.calc

execute unless entity @e[type=item_display,tag=gen.crops.crop_entity.growing,distance=..2.2] run kill @s