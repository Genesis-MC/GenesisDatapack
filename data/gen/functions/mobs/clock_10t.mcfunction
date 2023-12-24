
#Matryoshka 2nd Phase
execute as @e[type=item,nbt={Item:{tag:{gen:{name:"Petrified Matryoshka"}}}}] at @s run function gen:mobs/internal/ability/livingwood_matryoshka_2ndphase
schedule function gen:mobs/clock_10t 10t replace