scoreboard players remove @s gen.mobs.name_display_timer 1
execute if score @s gen.mobs.name_display_timer matches ..0 run function gen:mobs/internal/name_display/toggle/hide