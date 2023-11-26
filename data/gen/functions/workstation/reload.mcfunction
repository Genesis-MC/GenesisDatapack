tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"workstation ","color":"yellow"},{"text":"module","color":"green"}]

scoreboard objectives add gen.workstation dummy
scoreboard objectives add gen.workstation.shake dummy
scoreboard objectives add gen.workstation.anguish dummy

function gen:workstation/cooking_pot/reload