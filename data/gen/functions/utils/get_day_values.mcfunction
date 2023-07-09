execute store result score .day gen.world run time query day
execute store result score .daytime gen.world run time query daytime
execute store success score .is_night gen.world if score .daytime gen.world matches 12001..


scoreboard players operation .moon_phase gen.world = .day gen.world
scoreboard players operation .moon_phase gen.world %= #8 gen.const
scoreboard players add .moon_phase gen.world 1
execute if predicate gen:world/change_in_day_values run schedule function gen:mobs/internal/registry/filter/start 1s replace
scoreboard players operation #old_is_night gen.world = .is_night gen.world
scoreboard players operation #old_moon_phase gen.world = .moon_phase gen.world
schedule function gen:utils/get_day_values 1s replace