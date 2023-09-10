
execute unless data block ~ ~ ~ Items[0].tag.gen.mineral store result storage gen:mineral_enchant container byte 1 run data get block ~ ~ ~ Items[0].Slot

#execute unless data block ~ ~ ~ Items[0].tag.gen.mineral run item replace block ~ ~ ~ container.16 from entity @a container.4