data modify storage gen:temp compare set from storage gen:guidebook held_book.tag.genesis.guidebook.chapter_id
execute store result score #different gen.temp run data modify storage gen:temp compare set from storage gen:guidebook action.chapter
execute if score #different gen.temp matches 0 run return 0

### find new chapter ###
data modify storage gen:guidebook chapter_id set from storage gen:guidebook action.chapter
function gen:guidebook/api/retrieve_chapter
execute unless data storage gen:guidebook chapter run return 0

### check requirement ###
execute if data storage gen:guidebook chapter.requirement run function gen:guidebook/internal/check_requirement with storage gen:guidebook chapter
execute if data storage gen:guidebook chapter.requirement if score #guidebook.meet_requirement gen.temp matches 0 run tellraw @s {"text":"You do not have access to this chapter.","color":"red"}
execute if data storage gen:guidebook chapter.requirement if score #guidebook.meet_requirement gen.temp matches 0 run return 0

### modify book ###
data modify storage gen:guidebook book_tag set from storage gen:guidebook held_book.tag
execute unless data storage gen:guidebook book_tag.genesis.guidebook{chapter_id:""} run data modify storage gen:guidebook book_tag.genesis.guidebook.history.backward append from storage gen:guidebook book_tag.genesis.guidebook.chapter_id
data modify storage gen:guidebook book_tag.genesis.guidebook.chapter_id set from storage gen:guidebook chapter.id
data modify storage gen:guidebook book_tag.genesis.guidebook.history.forward set value []
data modify storage gen:guidebook macro.chapter_name set from storage gen:guidebook chapter.name
data modify storage gen:guidebook history set from storage gen:guidebook book_tag.genesis.guidebook.history

function gen:guidebook/internal/player/make_navbar

data modify storage gen:core resolve_text_list set from storage gen:guidebook chapter.pages
function gen:core/api/resolve_text_list
data modify storage gen:guidebook book_tag.pages set from storage gen:core resolve_text_list

function gen:guidebook/internal/player/set_held_book_tag