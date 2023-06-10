
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
scoreboard objectives add worldTime dummy
scoreboard objectives add worldlvl dummy
scoreboard objectives add entitylvl dummy

# schedule functions
schedule function gen:core/internal/delay 1s replace
schedule function gen:core/internal/worldtimeupdater 1s replace
