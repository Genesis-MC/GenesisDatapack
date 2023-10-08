# force actionbar to load, not sure why it doesnt load on first reload
function #smithed.actionbar:load
scoreboard objectives add gen.mana.current dummy
scoreboard objectives add gen.mana.current.real dummy
scoreboard objectives add gen.mana.max dummy
scoreboard objectives add gen.mana.display dummy
