summon text_display ~ ~ ~ {billboard:"center",Tags:["gen.mobs.name_display_cloud","new","gen.tracked","gen.ignore","gen.mobs.show_name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[1f,1f,1f]}}
ride @e[tag=new,limit=1] mount @s
execute on passengers run function gen:mobs/internal/name_display/cem/display
#function gen:mobs/data/name_display/display_chooser
tag @s add this
data modify entity @e[tag=new,limit=1] text set value '{"translate": "genesis.mobs.display_name.type.default","fallback": "ERROR: failed to load mob name","with": [{"score": {"name": "#currentLevel","objective": "gen.temp"},"color": "dark_gray","font": "genesis:utils/convert_to_superscript_digits","italic": false},{"selector":"@e[tag=this,limit=1]"}]}'
tag @s remove this

tag @e remove new