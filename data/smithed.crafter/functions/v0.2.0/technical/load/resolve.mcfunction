schedule clear smithed.crafter:v0.2.0/technical/tick
execute if score #smithed.crafter.major load.status matches 0 if score #smithed.crafter.minor load.status matches 2 if score #smithed.crafter.patch load.status matches 0 run function smithed.crafter:v0.2.0/technical/load
