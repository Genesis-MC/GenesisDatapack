scoreboard players remove @e[type=item_display,tag=gen.workstation.root,tag=gen.workstation.suffering,scores={gen.workstation.anguish=1..}] gen.workstation.anguish 1

scoreboard players remove @e[type=item_display,tag=gen.workstation.root,tag=gen.workstation.suffering,scores={gen.workstation.shake=1..}] gen.workstation.shake 1

execute as @e[type=item_display,tag=gen.workstation.root,tag=gen.workstation.suffering,scores={gen.workstation.shake=3}] at @s run function gen:workstation/internal/suffer/shake2
execute as @e[type=item_display,tag=gen.workstation.root,tag=gen.workstation.suffering,scores={gen.workstation.shake=1}] at @s run function gen:workstation/internal/suffer/shakereset


execute as @e[type=item_display,tag=gen.workstation.root,tag=gen.workstation.suffering,scores={gen.workstation.anguish=..0}] at @s run function gen:workstation/internal/suffer/stop