execute store result score .moon_phase gen.world run time query day

scoreboard players operation .moon_phase gen.world %= #8 gen.const
scoreboard players add .moon_phase gen.world 1
execute unless score #old_moon_phase gen.world = .moon_phase gen.world run schedule function gen:mobs/internal/registry/filter/start 1s replace
scoreboard players operation #old_moon_phase gen.world = .moon_phase gen.world
schedule function gen:utils/get_moon_phase 1s replace