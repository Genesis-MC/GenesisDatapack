
say Genesis Datapack Reloaded

scoreboard objectives add worldTime dummy
scoreboard objectives add worldlvl dummy
scoreboard objectives add entitylvl dummy

schedule function gen:core/internal/delay 1s replace
schedule function gen:core/internal/worldtimeupdater 1s replace


function gen:crops/load
