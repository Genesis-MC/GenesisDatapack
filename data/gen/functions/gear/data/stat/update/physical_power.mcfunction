function gen:gear/data/stat/remove/physical_power
execute if score @s gen.stat.physical_power matches 0 run return -1

scoreboard players operation #stat gen.math = @s gen.stat.physical_power

attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-bace "gen.stat.physical_power.base" -1 add
execute if score #stat gen.math matches 1073741824.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-1073741824 "gen.stat.physical_power.1073741824" 107374182.4 add
execute if score #stat gen.math matches 1073741824.. run scoreboard players remove #stat gen.math 1073741824
execute if score #stat gen.math matches 536870912.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-536870912 "gen.stat.physical_power.536870912" 53687091.2 add
execute if score #stat gen.math matches 536870912.. run scoreboard players remove #stat gen.math 536870912
execute if score #stat gen.math matches 268435456.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-268435456 "gen.stat.physical_power.268435456" 26843545.6 add
execute if score #stat gen.math matches 268435456.. run scoreboard players remove #stat gen.math 268435456
execute if score #stat gen.math matches 134217728.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-134217728 "gen.stat.physical_power.134217728" 13421772.8 add
execute if score #stat gen.math matches 134217728.. run scoreboard players remove #stat gen.math 134217728
execute if score #stat gen.math matches 67108864.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-67108864 "gen.stat.physical_power.67108864" 6710886.4 add
execute if score #stat gen.math matches 67108864.. run scoreboard players remove #stat gen.math 67108864
execute if score #stat gen.math matches 33554432.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-33554432 "gen.stat.physical_power.33554432" 3355443.2 add
execute if score #stat gen.math matches 33554432.. run scoreboard players remove #stat gen.math 33554432
execute if score #stat gen.math matches 16777216.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-16777216 "gen.stat.physical_power.16777216" 1677721.6 add
execute if score #stat gen.math matches 16777216.. run scoreboard players remove #stat gen.math 16777216
execute if score #stat gen.math matches 8388608.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-8388608 "gen.stat.physical_power.8388608" 838860.8 add
execute if score #stat gen.math matches 8388608.. run scoreboard players remove #stat gen.math 8388608
execute if score #stat gen.math matches 4194304.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-4194304 "gen.stat.physical_power.4194304" 419430.4 add
execute if score #stat gen.math matches 4194304.. run scoreboard players remove #stat gen.math 4194304
execute if score #stat gen.math matches 2097152.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-2097152 "gen.stat.physical_power.2097152" 209715.2 add
execute if score #stat gen.math matches 2097152.. run scoreboard players remove #stat gen.math 2097152
execute if score #stat gen.math matches 1048576.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-1048576 "gen.stat.physical_power.1048576" 104857.6 add
execute if score #stat gen.math matches 1048576.. run scoreboard players remove #stat gen.math 1048576
execute if score #stat gen.math matches 524288.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-524288 "gen.stat.physical_power.524288" 52428.8 add
execute if score #stat gen.math matches 524288.. run scoreboard players remove #stat gen.math 524288
execute if score #stat gen.math matches 262144.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-262144 "gen.stat.physical_power.262144" 26214.4 add
execute if score #stat gen.math matches 262144.. run scoreboard players remove #stat gen.math 262144
execute if score #stat gen.math matches 131072.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-131072 "gen.stat.physical_power.131072" 13107.2 add
execute if score #stat gen.math matches 131072.. run scoreboard players remove #stat gen.math 131072
execute if score #stat gen.math matches 65536.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-65536 "gen.stat.physical_power.65536" 6553.6 add
execute if score #stat gen.math matches 65536.. run scoreboard players remove #stat gen.math 65536
execute if score #stat gen.math matches 32768.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-32768 "gen.stat.physical_power.32768" 3276.8 add
execute if score #stat gen.math matches 32768.. run scoreboard players remove #stat gen.math 32768
execute if score #stat gen.math matches 16384.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-16384 "gen.stat.physical_power.16384" 1638.4 add
execute if score #stat gen.math matches 16384.. run scoreboard players remove #stat gen.math 16384
execute if score #stat gen.math matches 8192.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-8192 "gen.stat.physical_power.8192" 819.2 add
execute if score #stat gen.math matches 8192.. run scoreboard players remove #stat gen.math 8192
execute if score #stat gen.math matches 4096.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-4096 "gen.stat.physical_power.4096" 409.6 add
execute if score #stat gen.math matches 4096.. run scoreboard players remove #stat gen.math 4096
execute if score #stat gen.math matches 2048.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-2048 "gen.stat.physical_power.2048" 204.8 add
execute if score #stat gen.math matches 2048.. run scoreboard players remove #stat gen.math 2048
execute if score #stat gen.math matches 1024.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-1024 "gen.stat.physical_power.1024" 102.4 add
execute if score #stat gen.math matches 1024.. run scoreboard players remove #stat gen.math 1024
execute if score #stat gen.math matches 512.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-512 "gen.stat.physical_power.512" 51.2 add
execute if score #stat gen.math matches 512.. run scoreboard players remove #stat gen.math 512
execute if score #stat gen.math matches 256.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-256 "gen.stat.physical_power.256" 25.6 add
execute if score #stat gen.math matches 256.. run scoreboard players remove #stat gen.math 256
execute if score #stat gen.math matches 128.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-128 "gen.stat.physical_power.128" 12.8 add
execute if score #stat gen.math matches 128.. run scoreboard players remove #stat gen.math 128
execute if score #stat gen.math matches 64.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-64 "gen.stat.physical_power.64" 6.4 add
execute if score #stat gen.math matches 64.. run scoreboard players remove #stat gen.math 64
execute if score #stat gen.math matches 32.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-32 "gen.stat.physical_power.32" 3.2 add
execute if score #stat gen.math matches 32.. run scoreboard players remove #stat gen.math 32
execute if score #stat gen.math matches 16.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-16 "gen.stat.physical_power.16" 1.6 add
execute if score #stat gen.math matches 16.. run scoreboard players remove #stat gen.math 16
execute if score #stat gen.math matches 8.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-8 "gen.stat.physical_power.8" 0.8 add
execute if score #stat gen.math matches 8.. run scoreboard players remove #stat gen.math 8
execute if score #stat gen.math matches 4.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-4 "gen.stat.physical_power.4" 0.4 add
execute if score #stat gen.math matches 4.. run scoreboard players remove #stat gen.math 4
execute if score #stat gen.math matches 2.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-2 "gen.stat.physical_power.2" 0.2 add
execute if score #stat gen.math matches 2.. run scoreboard players remove #stat gen.math 2
execute if score #stat gen.math matches 1.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-1 "gen.stat.physical_power.1" 0.1 add
execute if score #stat gen.math matches 1.. run scoreboard players remove #stat gen.math 1
