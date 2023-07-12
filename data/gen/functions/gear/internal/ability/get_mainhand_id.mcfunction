execute store result score .id gen.ability run data get entity @s SelectedItem.tag.gen.stat.ability
execute store result score #cooldown gen.ability run data get entity @s SelectedItem.tag.gen.stat.cooldown
execute unless score .id gen.ability = @s gen.stat.ability.mainhand run return -1
execute unless score #cooldown gen.ability = @s gen.stat.cooldown.mainhand run return -1
scoreboard players set .hand gen.ability 1
