scoreboard players operation $search gen.player_id = @p[tag=this] gen.player_id
execute if entity @s[tag=gen.menu.amulet.interaction.stat_descriptions] as @e[tag=gen.menu.amulet.text_display] if score @s gen.player_id = $search gen.player_id at @s run function gen:menu/internal/amulet_proto/page1
execute if entity @s[tag=gen.menu.amulet.interaction.profession_levels] as @e[tag=gen.menu.amulet.text_display] if score @s gen.player_id = $search gen.player_id at @s run function gen:menu/internal/amulet_proto/page2
execute if entity @s[tag=gen.menu.amulet.interaction.back_button] run function gen:menu/internal/amulet_proto/back_button
execute if entity @s[tag=gen.menu.amulet.interaction.biome_info] as @e[tag=gen.menu.amulet.text_display] if score @s gen.player_id = $search gen.player_id at @s run say biomef
execute if entity @s[tag=gen.menu.amulet.interaction.stat_descriptions] as @e[tag=gen.menu.amulet.text_display] if score @s gen.player_id = $search gen.player_id at @s run say stat
playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1 1