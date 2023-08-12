execute if score clicked gen.guidebook matches 1000 run data modify storage gen:guidebook action set value {action:"go_to_chapter",chapter:"genesis:index"}
execute if score clicked gen.guidebook matches 1001 run data modify storage gen:guidebook action set value {action:"history_backward"}
execute if score clicked gen.guidebook matches 1002 run data modify storage gen:guidebook action set value {action:"history_forward"}
execute if score clicked gen.guidebook matches 1003 run data modify storage gen:guidebook action set value {action:"bookmark",bookmark:"add"}
execute if score clicked gen.guidebook matches 1004 run data modify storage gen:guidebook action set value {action:"bookmark",bookmark:"remove"}