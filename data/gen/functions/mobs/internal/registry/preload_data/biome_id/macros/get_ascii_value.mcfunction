$execute store result score #ascii gen.temp run data get storage gen:data ASCII_table[{Key:"$(char)"}].Value


# $tellraw @p [{"text":"ascii of $(char) is "},{"score":{"name":"#ascii","objective": "gen.temp"}}]