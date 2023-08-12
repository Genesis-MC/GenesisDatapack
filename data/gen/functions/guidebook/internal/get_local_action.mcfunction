data remove storage gen:guidebook action
data modify storage gen:guidebook chapter_id set from storage gen:guidebook held_book.tag.genesis.guidebook.chapter_id
function gen:guidebook/api/retrieve_chapter

execute if score clicked gen.guidebook matches 1 run data modify storage gen:guidebook action set from storage gen:guidebook chapter.actions[0]
execute if score clicked gen.guidebook matches 2 run data modify storage gen:guidebook action set from storage gen:guidebook chapter.actions[1]
execute if score clicked gen.guidebook matches 3 run data modify storage gen:guidebook action set from storage gen:guidebook chapter.actions[2]
execute if score clicked gen.guidebook matches 4 run data modify storage gen:guidebook action set from storage gen:guidebook chapter.actions[3]
execute if score clicked gen.guidebook matches 5 run data modify storage gen:guidebook action set from storage gen:guidebook chapter.actions[4]
execute if score clicked gen.guidebook matches 6 run data modify storage gen:guidebook action set from storage gen:guidebook chapter.actions[5]
execute if score clicked gen.guidebook matches 7 run data modify storage gen:guidebook action set from storage gen:guidebook chapter.actions[6]
execute if score clicked gen.guidebook matches 8 run data modify storage gen:guidebook action set from storage gen:guidebook chapter.actions[7]
execute if score clicked gen.guidebook matches 9 run data modify storage gen:guidebook action set from storage gen:guidebook chapter.actions[8]
execute if score clicked gen.guidebook matches 10 run data modify storage gen:guidebook action set from storage gen:guidebook chapter.actions[9]