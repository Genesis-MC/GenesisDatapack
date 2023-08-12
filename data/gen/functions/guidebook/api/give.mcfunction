data modify storage gen:guidebook book_tag set value {title:"Genesis Guidebook",author:"the way",pages:[],genesis:{guidebook:{history:{backward:[],forward:[]}}}}
data modify storage gen:guidebook book_tag.genesis.guidebook.chapter_id set from storage gen:guidebook chapters[0].id
data modify storage gen:guidebook macro.chapter_name set from storage gen:guidebook chapters[0].name
data modify storage gen:guidebook history set from storage gen:guidebook book_tag.genesis.guidebook.history

function gen:guidebook/internal/player/make_navbar

data modify storage gen:core resolve_text_list set from storage gen:guidebook chapters[0].pages
function gen:core/api/resolve_text_list
data modify storage gen:guidebook book_tag.pages set from storage gen:core resolve_text_list

loot give @s loot gen:guidebook/guidebook