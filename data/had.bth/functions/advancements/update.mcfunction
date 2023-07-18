execute as @a[advancements={had.bth:hurt=true}] run function had.bth:hurt_not_entity
execute as @a[advancements={had.bth:wore=true,had.bth:hurt=false},predicate=had.bth:has_block_helmet] run function had.bth:wore
execute as @a[advancements={had.bth:unworn=true}] run function had.bth:unworn

advancement revoke @a only had.bth:wore
advancement revoke @a only had.bth:unworn