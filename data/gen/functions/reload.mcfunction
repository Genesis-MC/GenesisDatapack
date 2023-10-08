# add scoreboards
scoreboard objectives add load.status dummy
#scoreboard players reset * load.status
# t for temp only use for really temporary varaibles
scoreboard objectives add t dummy

scoreboard objectives add gen.world dummy
scoreboard objectives add gen.biome dummy
scoreboard objectives add gen.biome_difficulty dummy
scoreboard objectives add gen.temp dummy
scoreboard objectives add gen.player_id dummy
scoreboard objectives add gen.config dummy

#player
scoreboard objectives add gen.mobs.level dummy
scoreboard objectives add gen.player.play_time minecraft.custom:play_time
scoreboard objectives add gen.player.time_alive minecraft.custom:time_since_death
scoreboard objectives add gen.player.damage_dealt minecraft.custom:damage_dealt
scoreboard objectives add gen.player.damage_taken minecraft.custom:damage_taken
scoreboard objectives add gen.player.mobs_killed minecraft.custom:mob_kills
scoreboard objectives add gen.player.fish_caught minecraft.custom:fish_caught
scoreboard objectives add gen.player.animals_bred minecraft.custom:animals_bred
scoreboard objectives add gen.player.raids_won minecraft.custom:raid_win
scoreboard objectives add gen.player.items_enchanted minecraft.custom:enchant_item

scoreboard objectives add gen.deathCount deathCount

scoreboard objectives add gen.modules dummy

#Enchant toggle system
data modify storage gen:enchant_toggle hide set value 1
data modify storage gen:enchant_toggle show set value 0
data modify storage gen:enchant_toggle hide_gen set value 195
data modify storage gen:enchant_toggle show_gen set value 194

execute unless score Crops gen.modules matches 0..1 run scoreboard players set Crops gen.modules 1
execute unless score Gear gen.modules matches 0..1 run scoreboard players set Gear gen.modules 1
execute unless score Professions gen.modules matches 0..1 run scoreboard players set Professions gen.modules 1
execute unless score Spawning gen.modules matches 0..1 run scoreboard players set Spawning gen.modules 1
execute unless score Mobs gen.modules matches 0..1 run scoreboard players set Mobs gen.modules 1
execute unless score Menu gen.modules matches 0..1 run scoreboard players set Menu gen.modules 1
execute unless score PlayerEvents gen.modules matches 0..1 run scoreboard players set PlayerEvents gen.modules 1
execute unless score Core gen.modules matches 0..1 run scoreboard players set Core gen.modules 1
execute unless score Guidebook gen.modules matches 0..1 run scoreboard players set Guidebook gen.modules 1
execute unless score Ability gen.modules matches 0..1 run scoreboard players set Ability gen.modules 1
execute unless score Manabar gen.modules matches 0..1 run scoreboard players set Manabar gen.modules 1
# reload modules
tellraw @a {"text":"Genesis Reloaded Succesfully","color":"light_purple"}
function gen:add_tags/reload

function gen:core/reload
function gen:crops/reload
function gen:gear/reload
function gen:math/reload
function gen:phead/reload
function gen:professions/reload
function gen:menu/reload
function gen:bossbars/reload
function gen:guidebook/reload
function gen:events/reload
function gen:utils/reload
function gen:raycast/reload
function gen:utils/get_world_values
function gen:mobs/reload
function gen:ability/reload
function gen:mana/reload
# schedule functions
schedule function gen:core/internal/delay 1s replace
schedule function gen:increase_levels 1s replace
# start ticking function
function gen:tick
