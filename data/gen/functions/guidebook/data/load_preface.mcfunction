data modify storage gen:guidebook default_book_tag set value {title:"Adventurers Guide Book",author:"Genesis",display:{Name:'{"translate":"Adventurers Guide Book","color":"gold","italic":false,"bold":false,"underlined":true}',Lore:['[{"translate":"A","font":"genesis:icon","color":"white","italic":false},{"translate":"Common Book","font":"minecraft:default","color":"white","italic":false}]']},generation:3,CustomModelData:982001,HideFlags:255,pages:[],genesis:{name:"Adventurers Guide Book",guidebook:{history:{backward:[],forward:[]}}}}

data modify storage gen:guidebook preface set from storage gen:guidebook default_book_tag
data modify storage gen:guidebook preface.genesis.guidebook.chapter_id set value ""
data modify storage gen:guidebook preface.pages set value ['{"text":"Open Index Page","color":"blue","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger gen.guidebook set 1000"}}']