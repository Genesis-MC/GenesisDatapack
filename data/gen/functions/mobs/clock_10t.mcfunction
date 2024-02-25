
#Matryoshka 2nd Phase
execute as @e[type=item,nbt={Item:{tag:{gen:{name:"Petrified Matryoshka"}}}}] at @s run function gen:mobs/internal/ability/livingwood_matryoshka_2ndphase
#Deepslate Cluster Spawn Grotto Ghouls
execute as @e[type=item,nbt={Item:{tag:{gen:{name:"Spawn Grotto Ghouls"}}}}] at @s run function gen:mobs/internal/ability/spawn_grotto_ghouls

schedule function gen:mobs/clock_10t 10t replace