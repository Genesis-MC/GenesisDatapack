## Called by the Enchantment Illuminator (Not actually an ability)
scoreboard players reset @s gen.ability.trigger_wfoas
execute at @s run particle enchant ~ ~1 ~ 0.3 0.1 0.3 1 10


function gen:ability/data/toggle_enchants/mainhand

item modify entity @s armor.head gen:toggle_enchants/armor
item modify entity @s armor.chest gen:toggle_enchants/armor
item modify entity @s armor.legs gen:toggle_enchants/armor
item modify entity @s armor.feet gen:toggle_enchants/armor