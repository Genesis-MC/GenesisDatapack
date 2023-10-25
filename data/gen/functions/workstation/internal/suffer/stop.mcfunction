scoreboard players reset @s gen.workstation.anguish
scoreboard players reset @s gen.workstation.shake
tag @s remove gen.workstation.suffering

execute store success score .suffering_exists gen.workstation if entity @e[type=item_display,tag=gen.workstation.root,tag=gen.workstation.suffering,limit=1]