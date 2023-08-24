execute store result storage gen:bossbars id int 1 run scoreboard players get @s gen.bossbars.id
$data modify storage gen:bossbars color set value "$(color)"
$data modify storage gen:bossbars name set value '$(name)'
$data modify storage gen:bossbars players set value "$(players)"
$data modify storage gen:bossbars visible set value "$(visible)"
$data modify storage gen:bossbars style set value "$(style)"
execute at @s run function gen:bossbars/internal/macro/create with storage gen:bossbars