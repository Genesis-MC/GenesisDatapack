#   list1 = [...biomes...] 
#   set2 = set()
#   list2 = []
#   col =0
#   result =0
#   for i in list1:
#       result = len(i)
#       result *= ord(i[-1])
#       for j in range(0,len(i)):
#           adder = ord(i[j])
#       
#           adder *= (ord(i[j]) % 16) * j + len(i)
#           
#           result += adder
#       
#       if(result >= 2147483647 or result <= -2147483648):
#           print(f"{result} overflow")
#       #result *= ord(i[0])    
#       if(result in set2):
#           #print(f"{i} {result} is a duplocate ")
#           col += 1
#       list2.append(result)
#       set2.add(result)
#       #print(f"{result}")    
#       
#           #  
#   #print(set2)
#   print(list2)
#   for i in range(0,len(list2)):
#       for j in range(0,len(list2)):
#           if(i == j):
#               break
#           if(list2[i] == list2[j]):
#               print(f"CODE {list2[i]} & {list1[i]} & {list1[j]} collide i = {i} j = {j}")
#   #print(list1)
#   print(f" num of collisions {col}")

#data modify storage gen:temp macro.char set value "null" 
data modify storage gen:temp macro.char set string storage gen:temp str 0 1
data modify storage gen:temp str set string storage gen:temp str 1
function gen:mobs/internal/registry/preload_data/biome_id/macros/get_ascii_value with storage gen:temp macro
#tellraw @p [{"text":"char "},{"nbt":"macro.char","storage": "gen:temp"}," with value ", {"score":{"name":"#ascii","objective": "gen.temp"}}]
# tellraw @p [{"text":"char "},{"nbt":"str","storage": "gen:temp"}]
#           adder = ord(i[j])
scoreboard players operation #adder gen.temp = #ascii gen.temp

#           adder = ord(i[j])
#       
#           adder *= ((ord(i[j]) % 16) * j) + len(i)

#tellraw @s ["STR = ",{"nbt":"str","storage":"gen:temp"}, " ====== " ,{"score":{"name":"#loop_times","objective":"gen.temp"}}]
scoreboard players operation ord t = #ascii gen.temp
scoreboard players operation ord t %= #16 gen.const
scoreboard players operation #index gen.temp = #len gen.temp
scoreboard players operation #index gen.temp -= #loop_times gen.temp
scoreboard players operation ord t *= #index gen.temp
#tellraw @p [{"text":"index "},{"score":{"name":"#index","objective": "gen.temp"}}]
scoreboard players operation ord t += #len gen.temp

scoreboard players operation #adder gen.temp *= ord t 
#           result += adder
scoreboard players operation #result gen.temp += #adder gen.temp 
scoreboard players remove #loop_times gen.temp 1
execute if score #loop_times gen.temp matches 1.. run function gen:mobs/internal/registry/preload_data/biome_id/string_loop_over_characters