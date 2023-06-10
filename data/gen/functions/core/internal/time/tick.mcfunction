execute store result score .gametime gen.time run time query gametime

execute as @e[type=marker,tag=gen.time.schedule_ticker,predicate=gen:core/time/passed_schedule] at @s run function gen:core/data/time/schedule_tick