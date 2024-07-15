# By mision_thi
scoreboard players set @s thi_return 0

# Check if target changed something, if so update storage and return 0
# execute if entity @s[tag=thi_update] run say has tag (actor)
execute if entity @s[tag=thi_update] run function thi_endergui:endergui/gui_change/setup with storage thi_endergui:storage Temp
execute if entity @s[tag=thi_update] store result score @s thi_return run function thi_pocket_main:api/sync_storage/remove_tag
execute if score @s thi_return matches 1 run return 0


### BUTTONS PRESSED
# Check which button was pressed
scoreboard players set .button thi_buttons 0
$execute if score @s thi_index_screen matches 1 unless data storage thi_endergui:storage Players[{UUID:$(UUID)}].gui.current[{Slot:17b}] run scoreboard players set .button thi_buttons 1
$execute if score @s thi_index_screen matches 2 unless data storage thi_endergui:storage Players[{UUID:$(UUID)}].gui.current[{Slot:17b}] run scoreboard players set .button thi_buttons 2

## Run action
# Go from mode 1 too 2
execute if score .button thi_buttons matches 1 run function thi_pocket_main:api/get_player/target/main
execute if score .button thi_buttons matches 1 run function thi_pocket_gui:gui_inventory/interactions/actor/change_page/mode_2 with storage thi_endergui:storage Temp
# Go from mode 2 too 1
execute if score .button thi_buttons matches 2 run function thi_pocket_main:api/get_player/target/main
execute if score .button thi_buttons matches 2 run function thi_pocket_gui:gui_inventory/interactions/actor/change_page/mode_1 with storage thi_endergui:storage Temp

# return 0
execute if score .button thi_buttons matches 1.. run tag @s add thi_update
execute if score .button thi_buttons matches 1.. run return 0

### ITEMS CHANGED
# Clear result storage
data modify storage thi_endergui:storage Temp.result set value []

## Check which item was taken
data modify storage thi_endergui:storage Temp.type set value "gui"
function thi_pocket_main:items_changed/store_data with storage thi_endergui:storage Temp
# Based on mode
execute if score @s thi_index_screen matches 1 run data modify storage thi_endergui:storage Temp.loop.slots set value [1,2,3,4,5,6,7,10,11,12,13,14,15,16,19,20,21,22,23,24,25]
execute if score @s thi_index_screen matches 2 run data modify storage thi_endergui:storage Temp.loop.slots set value [1,2,3,4,5,6,7,10,11,12,13,14,15,16,20,21,22,23,24]
# Call function
function thi_pocket_main:items_changed/main

# Trigger something based on results
function thi_pocket_gui:gui_inventory/interactions/actor/edit_slots with storage thi_endergui:storage Temp
