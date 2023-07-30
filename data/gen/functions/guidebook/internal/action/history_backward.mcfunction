data modify storage gen:guidebook history set from storage gen:guidebook book_tag.genesis.guidebook.history
execute unless data storage gen:guidebook history.backward[0] run return 0

data modify storage gen:guidebook chapter_id set from storage gen:guidebook history.backward[-1]
data modify storage gen:guidebook history.forward append from storage gen:guidebook book_tag.genesis.guidebook.chapter_id
data remove storage gen:guidebook history.backward[-1]
function gen:guidebook/api/retrieve_chapter
execute unless data storage gen:guidebook chapter run return 0

data modify storage gen:guidebook book_tag set from storage gen:guidebook held_book.tag
data modify storage gen:guidebook book_tag.genesis.guidebook.chapter_id set from storage gen:guidebook chapter.id
data modify storage gen:guidebook macro.chapter_name set from storage gen:guidebook chapter.name
data modify storage gen:guidebook book_tag.genesis.guidebook.history set from storage gen:guidebook history

function gen:guidebook/internal/player/make_navbar

data modify storage gen:core resolve_text_list set from storage gen:guidebook chapter.pages
function gen:core/api/resolve_text_list
data modify storage gen:guidebook book_tag.pages set from storage gen:core resolve_text_list

function gen:guidebook/internal/player/set_held_book_tag