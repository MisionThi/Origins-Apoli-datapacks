# By mision_thi
scoreboard players set @s thi_return 0

execute if entity @s[tag=thi_update_remove] run tag @s remove thi_update
execute if entity @s[tag=thi_update_remove] run tag @s remove thi_update_remove

# Check if target changed something, if so update storage and return 0
# execute if entity @s[tag=thi_update] run say has tag (actor)
execute if entity @s[tag=thi_update] run function thi_endergui:endergui/gui_change/setup with storage thi_endergui:storage Temp
execute if entity @s[tag=thi_update] store result score @s thi_return run function thi_pocket_main:api/sync_storage/remove_tag
execute if score @s thi_return matches 1 run return 0

### BUTTONS PRESSED
# Check which button was pressed
scoreboard players set .button thi_buttons 0
$execute unless data storage thi_endergui:storage Players[{UUID:$(UUID)}].gui.current[{Slot:0b}] run scoreboard players set .button thi_buttons 1

## Run action
# Go from mode 1 too 2
execute if score .button thi_buttons matches 1 run scoreboard players set @s thi_gui_screen 10

# return 0
execute if score .button thi_buttons matches 1.. run tag @s add thi_update
execute if score .button thi_buttons matches 1.. run return 0

# Clear result storage
data modify storage thi_endergui:storage Temp.result set value []

## Check which item was taken
data modify storage thi_endergui:storage Temp.type set value "gui"
function thi_pocket_main:items_changed/store_data with storage thi_endergui:storage Temp
data modify storage thi_endergui:storage Temp.loop.slots set value [12,14]
function thi_pocket_main:items_changed/main

# Trigger something based on results
function thi_pocket_gui:menu/gui_hand/interactions/actor/edit_slots with storage thi_endergui:storage Temp
