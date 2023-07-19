execute if score .player_count gen.world matches 1 run schedule function gen:mobs/internal/registry/filter/start 5s replace
execute store success score @s gen.bth.wearing_block_helmet if predicate gen:gear/bth/wearing_block_helmet
execute if score @s gen.bth.wearing_block_helmet matches 1 run function gen:gear/internal/bth/calc_durability
scoreboard players set @s gen.deathCount 0