
### Function is called every Minecraft day by gen:increase_level; Checks conditions and increases player level

scoreboard players set #div gen.math 24000

#Playtime
scoreboard players operation #ticks_to_day gen.math = @s gen.player.play_time
scoreboard players operation #ticks_to_day gen.math /= #div gen.math
execute if entity @s[advancements={gen:increase_level={playtime1=false}}] if score #ticks_to_day gen.math matches 1.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={playtime2=false}}] if score #ticks_to_day gen.math matches 2.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={playtime3=false}}] if score #ticks_to_day gen.math matches 3.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={playtime4=false}}] if score #ticks_to_day gen.math matches 5.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={playtime5=false}}] if score #ticks_to_day gen.math matches 7.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={playtime6=false}}] if score #ticks_to_day gen.math matches 10.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={playtime7=false}}] if score #ticks_to_day gen.math matches 13.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={playtime8=false}}] if score #ticks_to_day gen.math matches 16.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={playtime9=false}}] if score #ticks_to_day gen.math matches 20.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={playtime10=false}}] if score #ticks_to_day gen.math matches 24.. run scoreboard players add @s gen.mobs.level 1
execute if score #ticks_to_day gen.math matches 1.. run advancement grant @s only gen:increase_level playtime1
execute if score #ticks_to_day gen.math matches 2.. run advancement grant @s only gen:increase_level playtime2
execute if score #ticks_to_day gen.math matches 3.. run advancement grant @s only gen:increase_level playtime3
execute if score #ticks_to_day gen.math matches 5.. run advancement grant @s only gen:increase_level playtime4
execute if score #ticks_to_day gen.math matches 7.. run advancement grant @s only gen:increase_level playtime5
execute if score #ticks_to_day gen.math matches 10.. run advancement grant @s only gen:increase_level playtime6
execute if score #ticks_to_day gen.math matches 13.. run advancement grant @s only gen:increase_level playtime7
execute if score #ticks_to_day gen.math matches 16.. run advancement grant @s only gen:increase_level playtime8
execute if score #ticks_to_day gen.math matches 20.. run advancement grant @s only gen:increase_level playtime9
execute if score #ticks_to_day gen.math matches 24.. run advancement grant @s only gen:increase_level playtime10
#Time Alive
scoreboard players operation #ticks_to_day gen.math = @s gen.player.time_alive
scoreboard players operation #ticks_to_day gen.math /= #div gen.math
execute if entity @s[advancements={gen:increase_level={time_alive1=false}}] if score #ticks_to_day gen.math matches 1.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={time_alive2=false}}] if score #ticks_to_day gen.math matches 3.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={time_alive3=false}}] if score #ticks_to_day gen.math matches 10.. run scoreboard players add @s gen.mobs.level 1
execute if score #ticks_to_day gen.math matches 1.. run advancement grant @s only gen:increase_level time_alive1
execute if score #ticks_to_day gen.math matches 3.. run advancement grant @s only gen:increase_level time_alive1
execute if score #ticks_to_day gen.math matches 10.. run advancement grant @s only gen:increase_level time_alive1
#Damage Dealt
execute if entity @s[advancements={gen:increase_level={damage_dealt1=false}}] if score @s gen.player.damage_dealt matches 100.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={damage_dealt2=false}}] if score @s gen.player.damage_dealt matches 500.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={damage_dealt3=false}}] if score @s gen.player.damage_dealt matches 1000.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={damage_dealt4=false}}] if score @s gen.player.damage_dealt matches 5000.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={damage_dealt5=false}}] if score @s gen.player.damage_dealt matches 10000.. run scoreboard players add @s gen.mobs.level 1
execute if score @s gen.player.damage_dealt matches 100.. run advancement grant @s only gen:increase_level damage_dealt1
execute if score @s gen.player.damage_dealt matches 500.. run advancement grant @s only gen:increase_level damage_dealt2
execute if score @s gen.player.damage_dealt matches 1000.. run advancement grant @s only gen:increase_level damage_dealt3
execute if score @s gen.player.damage_dealt matches 5000.. run advancement grant @s only gen:increase_level damage_dealt4
execute if score @s gen.player.damage_dealt matches 10000.. run advancement grant @s only gen:increase_level damage_dealt5
#Damage Taken
execute if entity @s[advancements={gen:increase_level={damage_taken1=false}}] if score @s gen.player.damage_taken matches 100.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={damage_taken2=false}}] if score @s gen.player.damage_taken matches 300.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={damage_taken3=false}}] if score @s gen.player.damage_taken matches 500.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={damage_taken4=false}}] if score @s gen.player.damage_taken matches 1000.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={damage_taken5=false}}] if score @s gen.player.damage_taken matches 5000.. run scoreboard players add @s gen.mobs.level 1
execute if score @s gen.player.damage_taken matches 100.. run advancement grant @s only gen:increase_level damage_taken1
execute if score @s gen.player.damage_taken matches 300.. run advancement grant @s only gen:increase_level damage_taken2
execute if score @s gen.player.damage_taken matches 500.. run advancement grant @s only gen:increase_level damage_taken3
execute if score @s gen.player.damage_taken matches 1000.. run advancement grant @s only gen:increase_level damage_taken4
execute if score @s gen.player.damage_taken matches 5000.. run advancement grant @s only gen:increase_level damage_taken5
#Mobs Killed
execute if entity @s[advancements={gen:increase_level={mobs_killed1=false}}] if score @s gen.player.mobs_killed matches 50.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={mobs_killed2=false}}] if score @s gen.player.mobs_killed matches 100.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={mobs_killed3=false}}] if score @s gen.player.mobs_killed matches 200.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={mobs_killed4=false}}] if score @s gen.player.mobs_killed matches 400.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={mobs_killed5=false}}] if score @s gen.player.mobs_killed matches 700.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={mobs_killed6=false}}] if score @s gen.player.mobs_killed matches 1000.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={mobs_killed7=false}}] if score @s gen.player.mobs_killed matches 1500.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={mobs_killed8=false}}] if score @s gen.player.mobs_killed matches 2000.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={mobs_killed9=false}}] if score @s gen.player.mobs_killed matches 3000.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={mobs_killed10=false}}] if score @s gen.player.mobs_killed matches 5000.. run scoreboard players add @s gen.mobs.level 1
execute if score @s gen.player.mobs_killed matches 50.. run advancement grant @s only gen:increase_level mobs_killed1
execute if score @s gen.player.mobs_killed matches 100.. run advancement grant @s only gen:increase_level mobs_killed2
execute if score @s gen.player.mobs_killed matches 200.. run advancement grant @s only gen:increase_level mobs_killed3
execute if score @s gen.player.mobs_killed matches 400.. run advancement grant @s only gen:increase_level mobs_killed4
execute if score @s gen.player.mobs_killed matches 700.. run advancement grant @s only gen:increase_level mobs_killed5
execute if score @s gen.player.mobs_killed matches 1000.. run advancement grant @s only gen:increase_level mobs_killed6
execute if score @s gen.player.mobs_killed matches 1500.. run advancement grant @s only gen:increase_level mobs_killed7
execute if score @s gen.player.mobs_killed matches 2000.. run advancement grant @s only gen:increase_level mobs_killed8
execute if score @s gen.player.mobs_killed matches 3000.. run advancement grant @s only gen:increase_level mobs_killed9
execute if score @s gen.player.mobs_killed matches 5000.. run advancement grant @s only gen:increase_level mobs_killed10
#Fish Caught
execute if entity @s[advancements={gen:increase_level={fish_caught1=false}}] if score @s gen.player.fish_caught matches 10.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={fish_caught2=false}}] if score @s gen.player.fish_caught matches 100.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={fish_caught3=false}}] if score @s gen.player.fish_caught matches 500.. run scoreboard players add @s gen.mobs.level 1
execute if score @s gen.player.fish_caught matches 10.. run advancement grant @s only gen:increase_level fish_caught1
execute if score @s gen.player.fish_caught matches 100.. run advancement grant @s only gen:increase_level fish_caught2
execute if score @s gen.player.fish_caught matches 500.. run advancement grant @s only gen:increase_level fish_caught3
#Animals Bred
execute if entity @s[advancements={gen:increase_level={animals_bred1=false}}] if score @s gen.player.animals_bred matches 10.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={animals_bred2=false}}] if score @s gen.player.animals_bred matches 100.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={animals_bred3=false}}] if score @s gen.player.animals_bred matches 500.. run scoreboard players add @s gen.mobs.level 1
execute if score @s gen.player.animals_bred matches 10.. run advancement grant @s only gen:increase_level animals_bred1
execute if score @s gen.player.animals_bred matches 100.. run advancement grant @s only gen:increase_level animals_bred2
execute if score @s gen.player.animals_bred matches 500.. run advancement grant @s only gen:increase_level animals_bred3
#Raids Won
execute if entity @s[advancements={gen:increase_level={raids_won1=false}}] if score @s gen.player.raids_won matches 1.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={raids_won2=false}}] if score @s gen.player.raids_won matches 5.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={raids_won3=false}}] if score @s gen.player.raids_won matches 20.. run scoreboard players add @s gen.mobs.level 1
execute if score @s gen.player.raids_won matches 1.. run advancement grant @s only gen:increase_level raids_won1
execute if score @s gen.player.raids_won matches 5.. run advancement grant @s only gen:increase_level raids_won2
execute if score @s gen.player.raids_won matches 20.. run advancement grant @s only gen:increase_level raids_won3
#Items Enchanted
execute if entity @s[advancements={gen:increase_level={items_enchanted1=false}}] if score @s gen.player.items_enchanted matches 5.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={items_enchanted2=false}}] if score @s gen.player.items_enchanted matches 20.. run scoreboard players add @s gen.mobs.level 1
execute if entity @s[advancements={gen:increase_level={items_enchanted3=false}}] if score @s gen.player.items_enchanted matches 50.. run scoreboard players add @s gen.mobs.level 1
execute if score @s gen.player.items_enchanted matches 5.. run advancement grant @s only gen:increase_level items_enchanted1
execute if score @s gen.player.items_enchanted matches 20.. run advancement grant @s only gen:increase_level items_enchanted2
execute if score @s gen.player.items_enchanted matches 50.. run advancement grant @s only gen:increase_level items_enchanted3