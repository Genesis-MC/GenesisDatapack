#NOTE 
#   This function was made by HereAfterDestruction
#   You can use it but just don't claim it as your own
#   https://www.planetminecraft.com/member/hereafterdestruction
#-----------------NEW MOB------------------#
execute on vehicle run scoreboard players operation #currentLevel gen.temp = @s gen.mobs.level
#scoreboard players operation #currentHealth gen.temp = $current gen.stat.health
#scoreboard players operation #currentHealth gen.temp /= #10 gen.consts
#scoreboard players operation #currentMaxHealth gen.temp = @s gen.stat.max_health
# CHP = Current Health Percentage
#scoreboard players operation #CHP gen.temp = #currentHealth gen.temp
#scoreboard players operation #CHP gen.temp *= .1000 gen.consts
#scoreboard players operation #CHP gen.temp /= #currentMaxHealth gen.temp
function gen:mobs/data/name_display/display_chooser
data modify entity @s CustomName set from entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.display.Name
execute on vehicle run scoreboard players operation @s gen.mobs.name_display = mobs.name_display.type gen.config
#------------------------------------------#
