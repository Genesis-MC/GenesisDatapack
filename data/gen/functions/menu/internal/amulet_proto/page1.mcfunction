
scoreboard players operation $search gen.player_id = @s gen.player_id

scoreboard players operation $old gen.menu.amulet.page = @s gen.menu.amulet.page
scoreboard players operation $old gen.menu.amulet.subpage = @s gen.menu.amulet.subpage

scoreboard players set @s gen.menu.amulet.page 0
scoreboard players set @s gen.menu.amulet.subpage 1
scoreboard players operation $search gen.menu.amulet.page = @s gen.menu.amulet.page
scoreboard players operation $search gen.menu.amulet.subpage = @s gen.menu.amulet.subpage


execute as @e[tag=gen.menu.amulet.interaction] if score @s gen.player_id = $search gen.player_id run kill @s
execute as @e[tag=gen.menu.amulet.text_display] if score @s gen.player_id = $search gen.player_id run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},billboard:"vertical",text:'[{"selector":"@p[tag=this]","color":"gray"},{"text":"\'s info\\n\\n","color":"gray"},{"text":"Stat Descriptions\\n\\n","color":"yellow"},{"text":"Health: Bruh you this dumb 🤓☠😭\\n\\n","color":"red"},{"text":"Magic Power: increases magic damage.\\n\\n","color":"red"},{"text":"<<== Back\\n\\n","color":"gray","bold": true},{"text":"CLOSE","color":"red","bold": true}]',background:0}
tag @s remove this
summon interaction ~ ~-0.4 ~ {Tags:["new","gen.id_must_match","gen.tracked","gen.menu.amulet.interaction","gen.menu.amulet.interaction.back_button","gen.menu.amulet"],width:1.2,height:0.1,CustomName:'"back"'}
summon interaction ~ ~-0.8 ~ {Tags:["new","gen.id_must_match","gen.tracked","gen.menu.amulet.interaction","gen.menu.amulet","gen.menu.amulet.interaction.stat_descriptions"],width:1.2,height:0.1,CustomName:'"close"'}

scoreboard players operation @e[tag=new] gen.player_id = $search gen.player_id
execute as @e[tag=gen.menu.amulet] if score @s gen.player_id = $search gen.player_id run scoreboard players operation @s gen.menu.amulet.page = $search gen.menu.amulet.page
execute as @e[tag=gen.menu.amulet] if score @s gen.player_id = $search gen.player_id run scoreboard players operation @s gen.menu.amulet.subpage = $search gen.menu.amulet.subpage

execute as @e[tag=gen.menu.amulet.interaction.back_button] if score @s gen.player_id = $search gen.player_id run scoreboard players operation @s gen.menu.amulet.page = $old gen.menu.amulet.page
execute as @e[tag=gen.menu.amulet.interaction.back_button] if score @s gen.player_id = $search gen.player_id run scoreboard players operation @s gen.menu.amulet.subpage = $old gen.menu.amulet.subpage
tag @e remove new