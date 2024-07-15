# By mision_thi
scoreboard players set @s thi_return 0

execute if entity @s[tag=thi_update_remove] run tag @s remove thi_update
execute if entity @s[tag=thi_update_remove] run tag @s remove thi_update_remove

# Check if actor changed something, if so update storage and return 0
# execute if entity @s[tag=thi_update] run say has tag (target)
execute if entity @s[tag=thi_update] run function thi_pocket_inventory:detect_change/setup with storage thi_endergui:storage Temp
execute if entity @s[tag=thi_update] store result score @s thi_return run function thi_pocket_main:api/sync_storage/remove_tag
execute if score @s thi_return matches 1 run return 0

# Clear result storage
data modify storage thi_endergui:storage Temp.result set value []

## Check which item was taken
data modify storage thi_endergui:storage Temp.type set value "inventory"
function thi_pocket_main:items_changed/store_data with storage thi_endergui:storage Temp
# Based on mode
execute if score @s thi_index_target matches 1 run data modify storage thi_endergui:storage Temp.loop.slots set value [9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29]
execute if score @s thi_index_target matches 2 run data modify storage thi_endergui:storage Temp.loop.slots set value [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26]
# Call function
function thi_pocket_main:items_changed/main

# Trigger something based on results
function thi_pocket_gui:menu/gui_inventory/interactions/target/edit_slots with storage thi_endergui:storage Temp
