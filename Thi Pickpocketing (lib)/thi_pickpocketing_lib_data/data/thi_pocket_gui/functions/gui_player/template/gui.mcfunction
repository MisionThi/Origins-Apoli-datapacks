# By mision_thi

# Gui are all the buttons/structural item (like gui overlay)

# Slot 13
function thi_pocket_main:api/get_player/target/main
function thi_pocket_gui:gui_player/template/player_head with storage thi_endergui:storage Temp

item replace entity @s enderchest.26 with barrier{display:{Name:'{"text":" "}'},CustomModelData:40400} 1

# Length
# item replace entity @s enderchest.9 with knowledge_book{display:{Name:'{"text":"Hands","italic":false}'},CustomModelData:40503} 1
# item replace entity @s enderchest.11 with knowledge_book{display:{Name:'{"text":"Hotbar","italic":false}'},CustomModelData:40504} 1
# item replace entity @s enderchest.15 with knowledge_book{display:{Name:'{"text":"Armor","italic":false}'},CustomModelData:40505} 1
# item replace entity @s enderchest.17 with knowledge_book{display:{Name:'{"text":"Inventory","italic":false}'},CustomModelData:40506} 1

# Around
item replace entity @s enderchest.12 with knowledge_book{display:{Name:'{"text":"Hands","italic":false}'},CustomModelData:40503} 1
item replace entity @s enderchest.14 with knowledge_book{display:{Name:'{"text":"Hotbar","italic":false}'},CustomModelData:40504} 1
item replace entity @s enderchest.4 with knowledge_book{display:{Name:'{"text":"Armor","italic":false}'},CustomModelData:40505} 1
item replace entity @s enderchest.22 with knowledge_book{display:{Name:'{"text":"Inventory","italic":false}'},CustomModelData:40506} 1
