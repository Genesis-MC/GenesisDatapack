data modify storage gen:guidebook history set from storage gen:guidebook book_tag.genesis.guidebook.history
execute unless data storage gen:guidebook history.forward[0] run return 0

data modify storage gen:guidebook chapter_id set from storage gen:guidebook history.forward[-1]
data modify storage gen:guidebook history.backward append from storage gen:guidebook book_tag.genesis.guidebook.chapter_id
data remove storage gen:guidebook history.forward[-1]
function gen:guidebook/api/retrieve_chapter
execute unless data storage gen:guidebook chapter run return 0

data modify storage gen:guidebook book_tag set from storage gen:guidebook held_book.tag
data remove storage gen:guidebook book_tag.genesis.guidebook.chapter
data modify storage gen:guidebook book_tag.genesis.guidebook.chapter_id set from storage gen:guidebook chapter.id
data modify storage gen:guidebook macro.chapter_name set from storage gen:guidebook chapter.name
data modify storage gen:guidebook book_tag.genesis.guidebook.history set from storage gen:guidebook history
data modify storage gen:guidebook bookmarks set value []
data modify storage gen:guidebook bookmarks set from storage gen:guidebook book_tag.genesis.guidebook.bookmarks

function gen:guidebook/internal/player/make_navbar

data modify storage gen:core resolve_text_list set from storage gen:guidebook chapter.pages
function gen:core/api/resolve_text_list
data modify storage gen:guidebook book_tag.pages set from storage gen:core resolve_text_list

function gen:guidebook/internal/player/set_held_book_tag