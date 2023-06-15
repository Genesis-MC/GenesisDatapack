# later if we need health displays for bosses

#execute store result score $current gen.stat.health run data get entity @s Health 10
#execute unless score @s gen.stat.health = $current gen.stat.health run function #gen:mobs/hurt
#scoreboard players operation @s gen.stat.health = $current gen.stat.health