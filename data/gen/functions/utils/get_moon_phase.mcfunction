execute store result score .moon_phase gen.world run time query day
scoreboard players operation .moon_phase gen.world %= #8 gen.const
scoreboard players add .moon_phase gen.world 1
schedule function gen:utils/get_moon_phase 1s replace