data modify storage gen:guidebook chapter_id set from storage gen:guidebook compile_chapter.read[0].chapter_id
function gen:guidebook/api/retrieve_chapter

data modify storage gen:guidebook compile_chapter.actions append value {action:"go_to_chapter"}
data modify storage gen:guidebook compile_chapter.actions[-1].chapter set from storage gen:guidebook chapter_id
data modify storage gen:guidebook compile_chapter.name set from storage gen:guidebook chapter.name
execute store result storage gen:guidebook compile_chapter.index int 1 run scoreboard players get #guidebook.i gen.temp
scoreboard players add #guidebook.i gen.temp 1
execute store result storage gen:guidebook compile_chapter.trigger int 1 run scoreboard players get #guidebook.i gen.temp
function gen:guidebook/internal/bookmark/compile_chapter/add_element with storage gen:guidebook compile_chapter


data remove storage gen:guidebook compile_chapter.read[0]
execute if data storage gen:guidebook compile_chapter.read[0] run function gen:guidebook/internal/bookmark/compile_chapter/loop