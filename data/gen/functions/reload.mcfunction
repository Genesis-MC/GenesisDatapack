
say Genesis Datapack Reloaded

# reload modules
function gen:core/reload
function gen:crops/reload
function gen:gear/reload
function gen:math/reload
function gen:phead/reload
function gen:professions/reload
function gen:spawning/reload

# add scoreboards
scoreboard objectives add genesis.world_time dummy
scoreboard objectives add genesis.world_lvl dummy
scoreboard objectives add genesis.entity_lvl dummy
scoreboard objectives add gen.temp dummy

# schedule functions
schedule function gen:core/internal/delay 1s replace
schedule function gen:core/internal/worldtimeupdater 1s replace
