scoreboard players set #0 gen.bossbars.id 1
scoreboard players set #1 gen.bossbars.id 1
scoreboard players set #2 gen.bossbars.id 1
scoreboard players set #3 gen.bossbars.id 1
scoreboard players set #4 gen.bossbars.id 1
scoreboard players set #5 gen.bossbars.id 1
scoreboard players set #6 gen.bossbars.id 1
scoreboard players set #7 gen.bossbars.id 1
scoreboard players set #8 gen.bossbars.id 1
scoreboard players set #9 gen.bossbars.id 1
scoreboard players set #10 gen.bossbars.id 1
scoreboard players set #11 gen.bossbars.id 1
scoreboard players set #12 gen.bossbars.id 1
scoreboard players set #13 gen.bossbars.id 1
scoreboard players set #14 gen.bossbars.id 1
scoreboard players set #15 gen.bossbars.id 1
scoreboard players set #16 gen.bossbars.id 1
scoreboard players set #17 gen.bossbars.id 1
scoreboard players set #18 gen.bossbars.id 1
scoreboard players set #19 gen.bossbars.id 1
scoreboard players set #20 gen.bossbars.id 1
scoreboard players set #21 gen.bossbars.id 1
scoreboard players set #22 gen.bossbars.id 1
scoreboard players set #23 gen.bossbars.id 1
scoreboard players set #24 gen.bossbars.id 1
scoreboard players set #25 gen.bossbars.id 1
scoreboard players set #26 gen.bossbars.id 1
scoreboard players set #27 gen.bossbars.id 1
scoreboard players set #28 gen.bossbars.id 1
scoreboard players set #29 gen.bossbars.id 1
scoreboard players set #30 gen.bossbars.id 1
scoreboard players set #31 gen.bossbars.id 1

execute as @e[tag=gen.bossbars.show] run function gen:bossbars/internal/check_death

execute if score #0 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.0 visible false
execute if score #1 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.1 visible false
execute if score #2 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.2 visible false
execute if score #3 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.3 visible false
execute if score #4 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.4 visible false
execute if score #5 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.5 visible false
execute if score #6 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.6 visible false
execute if score #7 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.7 visible false
execute if score #8 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.8 visible false
execute if score #9 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.9 visible false
execute if score #10 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.10 visible false
execute if score #11 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.11 visible false
execute if score #12 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.12 visible false
execute if score #13 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.13 visible false
execute if score #14 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.14 visible false
execute if score #15 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.15 visible false
execute if score #16 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.16 visible false
execute if score #17 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.17 visible false
execute if score #18 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.18 visible false
execute if score #19 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.19 visible false
execute if score #20 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.20 visible false
execute if score #21 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.21 visible false
execute if score #22 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.22 visible false
execute if score #23 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.23 visible false
execute if score #24 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.24 visible false
execute if score #25 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.25 visible false
execute if score #26 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.26 visible false
execute if score #27 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.27 visible false
execute if score #28 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.28 visible false
execute if score #29 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.29 visible false
execute if score #30 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.30 visible false
execute if score #31 gen.bossbars.id matches 1 run bossbar set genesis:bossbar.31 visible false

schedule function gen:bossbars/clock_30t 30t replace