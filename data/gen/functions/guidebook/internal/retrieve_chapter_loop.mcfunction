execute store result score #different gen.temp run data modify storage gen:guidebook retrieve_chapter[-1].id set from storage gen:guidebook chapter_id
scoreboard players remove #i gen.temp 1
execute if score #different gen.temp matches 1 run data remove storage gen:guidebook retrieve_chapter[-1]
execute if score #different gen.temp matches 1 if score #i gen.temp matches 1.. run function gen:guidebook/internal/retrieve_chapter_loop