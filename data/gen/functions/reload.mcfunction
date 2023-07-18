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
function gen:events/reload
function gen:utils/reload
# schedule functions


function gen:utils/get_day_values


schedule function gen:core/internal/delay 1s replace
schedule function gen:core/internal/worldtimeupdater 1s replace
