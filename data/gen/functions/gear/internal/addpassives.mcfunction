
#First remove all passives
advancement revoke @s only gen:passive

#Add passives for each gear

#Test Gear
#/give @a iron_boots{gen:{stat:{armor:25},name:"TESTING"},AttributeModifiers:[{AttributeName:"minecraft:generic.luck",Name:"tungsten.feet",Amount:-0.000000000001,Operation:0,UUID:[I;12,42069,-0,15],Slot:"feet"}]} 
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"TESTING"}}}]}] run advancement grant @s only gen:passive unfetteredI
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"TESTING"}}}]}] run advancement grant @s only gen:passive unfetteredII
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"TESTING"}}}]}] run advancement grant @s only gen:passive heart_of_the_sea
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"TESTING"}}}]}] run advancement grant @s only gen:passive sea_born