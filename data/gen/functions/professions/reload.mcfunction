tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"professions ","color":"yellow"},{"text":"module","color":"green"}]

scoreboard objectives add gen.professions dummy

function gen:professions/alchemy/reload
function gen:professions/artificing/reload
function gen:professions/cooking/reload
function gen:professions/exorcism/reload
function gen:professions/farming/reload
function gen:professions/mineralogy/reload
function gen:professions/mycology/reload