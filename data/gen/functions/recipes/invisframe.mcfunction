recipe take @s utils:invisframerecipe
advancement revoke @s only utils:invisframeadvancement
clear @s minecraft:knowledge_book

give @s item_frame{display:{Name:'{"text":"Invisible Item Frame"}'},EntityTag:{Invisible:1b}}
