scoreboard players set @s gen.bth.wearing_block_helmet 1


item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 with air
item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s armor.head
data modify entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.HelmetData.Original set from entity 0001e4dd-0000-ca49-0002-425300000000 item
data modify entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.HelmetData.isBlockHelmet set value 1b
data modify entity 0001e4dd-0000-ca49-0002-425300000000 item merge from entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.HelmetData
item replace entity @s armor.head from entity 0001e4dd-0000-ca49-0002-425300000000 container.0


advancement revoke @s only gen:gear/bth/wore