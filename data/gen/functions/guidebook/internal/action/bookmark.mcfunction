data modify storage gen:guidebook book_tag set from storage gen:guidebook held_book.tag
execute if data storage gen:guidebook chapter{id:""} run return 0

data modify storage gen:guidebook bookmarks set value []
data modify storage gen:guidebook bookmarks set from storage gen:guidebook book_tag.genesis.guidebook.bookmarks
execute if data storage gen:guidebook action{bookmark:"add"} run function gen:guidebook/internal/bookmark/add with storage gen:guidebook book_tag.genesis.guidebook
execute if data storage gen:guidebook action{bookmark:"remove"} run function gen:guidebook/internal/bookmark/remove with storage gen:guidebook book_tag.genesis.guidebook

### modify book ###
data modify storage gen:guidebook book_tag.genesis.guidebook.chapter_id set from storage gen:guidebook chapter.id
data modify storage gen:guidebook book_tag.genesis.guidebook.bookmarks set from storage gen:guidebook bookmarks
data modify storage gen:guidebook macro.chapter_name set from storage gen:guidebook chapter.name
data modify storage gen:guidebook history set from storage gen:guidebook book_tag.genesis.guidebook.history

function gen:guidebook/internal/player/make_navbar

data modify storage gen:core resolve_text_list set from storage gen:guidebook chapter.pages
function gen:core/api/resolve_text_list
data modify storage gen:guidebook book_tag.pages set from storage gen:core resolve_text_list

function gen:guidebook/internal/player/set_held_book_tag