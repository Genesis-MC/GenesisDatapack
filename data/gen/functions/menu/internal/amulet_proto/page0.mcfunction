# this = player
scoreboard players operation $search gen.player_id = @s gen.player_id

scoreboard players operation $old gen.menu.amulet.page = @s gen.menu.amulet.page
scoreboard players operation $old gen.menu.amulet.subpage = @s gen.menu.amulet.subpage

scoreboard players set @s gen.menu.amulet.page 0
scoreboard players set @s gen.menu.amulet.subpage 0
scoreboard players operation $search gen.menu.amulet.page = @s gen.menu.amulet.page
scoreboard players operation $search gen.menu.amulet.subpage = @s gen.menu.amulet.subpage



execute as @e[tag=gen.menu.amulet.interaction] if score @s gen.player_id = $search gen.player_id run kill @s
execute as @e[tag=gen.menu.amulet.text_display] if score @s gen.player_id = $search gen.player_id run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1f,1f,1f]},billboard:"vertical",text:'[{"selector":"@p[tag=this]","color":"gray"},{"text":"\'s info\\n\\n","color":"gray"},{"text":"Biome Info\\n\\n","color":"red"},{"text":"Profession Levels\\n\\n","color":"dark_aqua"},{"text":"Stat Descriptions\\n\\n","color":"yellow"},{"text":"CLOSE","color":"red","bold": true}]',background:0}


summon interaction ~ ~1 ~ {Tags:["new","gen.id_must_match","gen.tracked","gen.menu.amulet.interaction","gen.menu.amulet","gen.menu.amulet.interaction.biome_info"],width:1.2,height:0.1,CustomName:'"biome_info"'}
summon interaction ~ ~0.55 ~ {Tags:["new","gen.id_must_match","gen.tracked","gen.menu.amulet.interaction","gen.menu.amulet","gen.menu.amulet.interaction.profession_levels"],width:1.2,height:0.125,CustomName:'"profession"'}
summon interaction ~ ~0.1 ~ {Tags:["new","gen.id_must_match","gen.tracked","gen.menu.amulet.interaction","gen.menu.amulet","gen.menu.amulet.interaction.stat_descriptions"],width:1.2,height:0.1,CustomName:'"stat"'}
summon interaction ~ ~-0.4 ~ {Tags:["new","gen.id_must_match","gen.tracked","gen.menu.amulet.interaction","gen.menu.amulet","gen.menu.amulet.interaction.close"],width:0.9,height:0.1,CustomName:'"close"'}


scoreboard players operation @e[tag=new] gen.player_id = $search gen.player_id
execute as @e[tag=gen.menu.amulet] if score @s gen.player_id = $search gen.player_id run scoreboard players operation @s gen.menu.amulet.page = $search gen.menu.amulet.page
execute as @e[tag=gen.menu.amulet] if score @s gen.player_id = $search gen.player_id run scoreboard players operation @s gen.menu.amulet.subpage = $search gen.menu.amulet.subpage
tag @e remove new