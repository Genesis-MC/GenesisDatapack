tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"bossbars ","color":"yellow"},{"text":"module","color":"green"}]
scoreboard objectives add gen.bossbars.id dummy
scoreboard objectives add gen.bossbars.color dummy

scoreboard players set #max gen.bossbars.id 32
bossbar add genesis:bossbar.0 "error: unset name"
bossbar add genesis:bossbar.1 "error: unset name"
bossbar add genesis:bossbar.2 "error: unset name"
bossbar add genesis:bossbar.3 "error: unset name"
bossbar add genesis:bossbar.4 "error: unset name"
bossbar add genesis:bossbar.5 "error: unset name"
bossbar add genesis:bossbar.6 "error: unset name"
bossbar add genesis:bossbar.7 "error: unset name"
bossbar add genesis:bossbar.8 "error: unset name"
bossbar add genesis:bossbar.9 "error: unset name"
bossbar add genesis:bossbar.10 "error: unset name"
bossbar add genesis:bossbar.11 "error: unset name"
bossbar add genesis:bossbar.12 "error: unset name"
bossbar add genesis:bossbar.13 "error: unset name"
bossbar add genesis:bossbar.14 "error: unset name"
bossbar add genesis:bossbar.15 "error: unset name"
bossbar add genesis:bossbar.16 "error: unset name"
bossbar add genesis:bossbar.17 "error: unset name"
bossbar add genesis:bossbar.18 "error: unset name"
bossbar add genesis:bossbar.19 "error: unset name"
bossbar add genesis:bossbar.20 "error: unset name"
bossbar add genesis:bossbar.21 "error: unset name"
bossbar add genesis:bossbar.22 "error: unset name"
bossbar add genesis:bossbar.23 "error: unset name"
bossbar add genesis:bossbar.24 "error: unset name"
bossbar add genesis:bossbar.25 "error: unset name"
bossbar add genesis:bossbar.26 "error: unset name"
bossbar add genesis:bossbar.27 "error: unset name"
bossbar add genesis:bossbar.28 "error: unset name"
bossbar add genesis:bossbar.29 "error: unset name"
bossbar add genesis:bossbar.30 "error: unset name"
bossbar add genesis:bossbar.31 "error: unset name"

function gen:bossbars/clock_30t
function gen:bossbars/clock_60t