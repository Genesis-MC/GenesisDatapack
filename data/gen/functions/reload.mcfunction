# add scoreboards
scoreboard objectives add t dummy


scoreboard objectives add gen.world_time dummy
scoreboard objectives add gen.world_lvl dummy
scoreboard objectives add gen.world dummy
scoreboard objectives add gen.biome dummy
scoreboard objectives add gen.biome_difficulty dummy
scoreboard objectives add gen.temp dummy
scoreboard objectives add gen.player_id dummy
scoreboard objectives add gen.config dummy

scoreboard objectives add gen.deathCount deathCount

scoreboard objectives add gen.modules dummy

execute unless score Crops gen.modules matches 0..1 run scoreboard players set Crops gen.modules 1
execute unless score Gear gen.modules matches 0..1 run scoreboard players set Gear gen.modules 1
execute unless score Professions gen.modules matches 0..1 run scoreboard players set Professions gen.modules 1
execute unless score Spawning gen.modules matches 0..1 run scoreboard players set Spawning gen.modules 1
execute unless score Mobs gen.modules matches 0..1 run scoreboard players set Mobs gen.modules 1
execute unless score Menu gen.modules matches 0..1 run scoreboard players set Menu gen.modules 1
execute unless score PlayerEvents gen.modules matches 0..1 run scoreboard players set PlayerEvents gen.modules 1
execute unless score Core gen.modules matches 0..1 run scoreboard players set Core gen.modules 1
execute unless score Guidebook gen.modules matches 0..1 run scoreboard players set Guidebook gen.modules 1
# reload modules
tellraw @a {"text":"Genesis Reloaded Succesfully","color":"light_purple"}

function gen:core/reload
function gen:crops/reload
function gen:gear/reload
function gen:math/reload
function gen:phead/reload
function gen:professions/reload
function gen:menu/reload
function gen:bossbars/reload
function gen:items/reload
function gen:mobs/reload
function gen:particles/reload
function gen:player_events/reload
function gen:guidebook/reload
function gen:events/reload
function gen:utils/reload
function gen:raycast/reload

function gen:utils/get_world_values
# schedule functions
schedule function gen:core/internal/delay 1s replace
schedule function gen:core/internal/worldtimeupdater 1s replace

# start ticking function
function gen:tick
