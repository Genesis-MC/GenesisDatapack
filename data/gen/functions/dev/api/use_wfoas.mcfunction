execute if data storage gen:core used_wfoas.tag.gen.on_click.dev{dev_stone:1b} if score @s gen.player.sneak_time matches 1.. run function gen:dev/internal/dev_stone/use_sneak
execute if data storage gen:core used_wfoas.tag.gen.on_click.dev{dev_stone:1b} unless score @s gen.player.sneak_time matches 1.. run function gen:dev/internal/dev_stone/use_nosneak

