### modify book ###
data modify storage gen:guidebook book_tag set from storage gen:guidebook held_book.tag
execute unless data storage gen:guidebook book_tag.genesis.guidebook{chapter_id:""} run data modify storage gen:guidebook book_tag.genesis.guidebook.history.backward append from storage gen:guidebook book_tag.genesis.guidebook.chapter_id
data modify storage gen:guidebook book_tag.genesis.guidebook.history.forward set value []
data modify storage gen:guidebook history set from storage gen:guidebook book_tag.genesis.guidebook.history
data modify storage gen:guidebook bookmarks set value []
data modify storage gen:guidebook bookmarks set from storage gen:guidebook book_tag.genesis.guidebook.bookmarks


### compile chapter ###
data modify storage gen:guidebook compile_chapter set value {buffer:'',elements:[],actions:[],read:[],pages:[]}
data modify storage gen:guidebook compile_chapter.read set from storage gen:guidebook bookmarks
scoreboard players set #guidebook.i gen.temp 0
function gen:guidebook/internal/bookmark/compile_chapter/new_page
execute if data storage gen:guidebook compile_chapter.read[0] run function gen:guidebook/internal/bookmark/compile_chapter/loop
function gen:guidebook/internal/bookmark/compile_chapter/close_page with storage gen:guidebook compile_chapter
data modify storage gen:guidebook chapter set value {id:"",name:"Bookmarks",actions:[],pages:[]}
data modify storage gen:guidebook chapter.actions set from storage gen:guidebook compile_chapter.actions
data modify storage gen:guidebook chapter.pages set from storage gen:guidebook compile_chapter.pages


### modify book ###
data modify storage gen:guidebook book_tag.genesis.guidebook.chapter_id set from storage gen:guidebook chapter.id
data modify storage gen:guidebook book_tag.genesis.guidebook.history.forward set value []
data modify storage gen:guidebook macro.chapter_name set from storage gen:guidebook chapter.name
data modify storage gen:guidebook book_tag.genesis.guidebook.chapter set from storage gen:guidebook chapter



function gen:guidebook/internal/player/make_navbar

data modify storage gen:core resolve_text_list set from storage gen:guidebook chapter.pages
function gen:core/api/resolve_text_list
data modify storage gen:guidebook book_tag.pages set from storage gen:core resolve_text_list

function gen:guidebook/internal/player/set_held_book_tag