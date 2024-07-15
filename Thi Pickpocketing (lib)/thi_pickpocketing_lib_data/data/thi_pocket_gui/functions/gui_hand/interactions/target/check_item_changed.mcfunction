# By mision_thi
scoreboard players set @s thi_return 0

execute if entity @s[tag=thi_update_remove] run tag @s remove thi_update
execute if entity @s[tag=thi_update_remove] run tag @s remove thi_update_remove

# Check if actor changed something, if so update storage and return 0
# execute if entity @s[tag=thi_update] run say has tag (target)
execute if entity @s[tag=thi_update] run function thi_pocket_hand:detect_change/setup with storage thi_endergui:storage Temp
execute if entity @s[tag=thi_update] store result score @s thi_return run function thi_pocket_main:api/sync_storage/remove_tag
execute if score @s thi_return matches 1 run return 0

# Clear result storage
data modify storage thi_endergui:storage Temp.result set value []

## Check which item was taken
data modify storage thi_endergui:storage Temp.type set value "hand"
function thi_pocket_main:items_changed/store_data with storage thi_endergui:storage Temp
# Call this way because of mainhand slot number changes
execute store result storage thi_endergui:storage Temp.slot int 1 run data get entity @s SelectedItemSlot
function thi_pocket_gui:gui_hand/interactions/target/call_items_changed with storage thi_endergui:storage Temp

# Update SelectedItemSlot
execute store result score @s thi_activeslot_old run data get entity @s SelectedItemSlot

# Trigger something based on results
function thi_pocket_gui:gui_hand/interactions/target/edit_slots with storage thi_endergui:storage Temp
