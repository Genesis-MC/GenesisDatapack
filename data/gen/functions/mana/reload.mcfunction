# force actionbar to load, not sure why it doesnt load on first reload
function #smithed.actionbar:load
scoreboard objectives add gen.mana.current dummy
scoreboard objectives add gen.mana.current.real dummy
scoreboard objectives add gen.mana.max dummy
scoreboard objectives add gen.mana.display dummy

scoreboard objectives add gen.cooldown.main dummy
scoreboard objectives add gen.cooldown.off dummy
scoreboard objectives add gen.cooldown.seconds dummy
scoreboard objectives add gen.cooldown.decimal dummy
scoreboard objectives add gen.cooldown.icon dummy
scoreboard objectives add gen.cooldown.dot dummy
