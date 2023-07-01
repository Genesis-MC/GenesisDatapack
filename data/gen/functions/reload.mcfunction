# add scoreboards
scoreboard objectives add gen.world_time dummy
scoreboard objectives add gen.world_lvl dummy
scoreboard objectives add gen.world dummy
scoreboard objectives add gen.temp dummy
scoreboard objectives add gen.player_id dummy
scoreboard objectives add gen.config dummy


scoreboard objectives add gen.modules dummy
tellraw @a {"text":"<Genesis Reloaded Succesfully>","color":"gold","bold":true}
function gen:core/reload
function gen:crops/reload
function gen:gear/reload
function gen:math/reload
function gen:phead/reload
function gen:professions/reload
function gen:spawning/reload
function gen:menu/reload
function gen:bossbars/reload
function gen:items/reload
function gen:mobs/reload
function gen:player_events/reload
function gen:events/reload
function gen:utils/reload
# schedule functions


function gen:utils/get_moon_phase


schedule function gen:core/internal/delay 1s replace
schedule function gen:core/internal/worldtimeupdater 1s replace
