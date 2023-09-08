# poor Python code 
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









#data modify storage gen:temp str set string storage gen:temp str 1
#        result = 0
# scoreboard players set #result gen.temp 0

#data modify storage gen:temp macro.char set value "null" 
#                                                                       last char
data modify storage gen:temp macro.char set string storage gen:temp str 0 1
function gen:mobs/internal/registry/preload_data/biome_id/macros/get_ascii_value with storage gen:temp macro

#           result = len(i)
scoreboard players set #adder gen.temp 0

execute store result score #len gen.temp run data get storage gen:temp str
scoreboard players operation #loop_times gen.temp = #len gen.temp
scoreboard players operation #result gen.temp = #len gen.temp
# tellraw @a ["STR = ",{"nbt":"str","storage":"gen:temp"}, " ====== " ,{"score":{"name":"#loop_times","objective":"gen.temp"}}]

#           result *= ord(i[-1])
scoreboard players operation #result gen.temp *= #ascii gen.temp
#tellraw @p {"score":{"name":"#result","objective": "gen.temp"},"color":"light_purple"}
#scoreboard players operation #result gen.temp = #firstchar gen.temp
function gen:mobs/internal/registry/preload_data/biome_id/string_loop_over_characters



execute store result storage gen:temp macro.value int 1 run scoreboard players get #result gen.temp
function gen:mobs/internal/registry/preload_data/biome_id/macros/cache_it with storage gen:temp macro
#data modify storage gen:temp macro set value {}
