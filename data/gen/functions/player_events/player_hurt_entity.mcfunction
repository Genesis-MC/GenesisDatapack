# @s = hurt entity
# 4 secs (time = how many seconds * 20)
scoreboard players set @s gen.mobs.name_display_timer 80
function #gen:mobs/data/hurt
function gen:mobs/internal/name_display/toggle/show