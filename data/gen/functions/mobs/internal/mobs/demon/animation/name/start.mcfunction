function gen:mobs/internal/
execute as @e[tag=gen.mobs.demon] at @s unless score @s gen.mobs.demon.animation matches 9.. run function gen:mobs/internal/mobs/demon/animation/name/loop
schedule function gen:mobs/internal/mobs/demon/animation/name/start 1s