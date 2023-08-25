data modify storage gen:guidebook book_tag set value {title:"Adventurers Guide Book",author:"Genesis",display:{Name:'{"translate":"Adventurers Guide Book","color":"gold","italic":false,"bold":false,"underlined":true}',Lore:['[{"translate":"A","font":"genesis:icon","color":"white","italic":false},{"translate":"Common Book","font":"minecraft:default","color":"white","italic":false}]']},generation:3,CustomModelData:982001,HideFlags:255,pages:[],genesis:{name:"Adventurers Guide Book",guidebook:{history:{backward:[],forward:[]}}}}
data modify storage gen:guidebook book_tag.genesis.guidebook.chapter_id set from storage gen:guidebook chapters[0].id
data modify storage gen:guidebook macro.chapter_name set from storage gen:guidebook chapters[0].name
data modify storage gen:guidebook history set from storage gen:guidebook book_tag.genesis.guidebook.history

function gen:guidebook/internal/player/make_navbar

data modify storage gen:core resolve_text_list set from storage gen:guidebook chapters[0].pages
function gen:core/api/resolve_text_list
data modify storage gen:guidebook book_tag.pages set from storage gen:core resolve_text_list

loot give @s loot gen:gear/books/guidebook