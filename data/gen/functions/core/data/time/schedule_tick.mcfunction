#####################################################################
# core/data/time/schedule_tick.mcfunction
# written by Eroxen
#
# Gets called on any marker tagged "gen.time.schedule_ticker" once it's
# gen.time.schedule score is lower or equal to the gen.time .gametime score
#####################################################################

execute if entity @s[tag=gen.crops.ticker_entity] run function gen:crops/api/call_on_ticker_entity