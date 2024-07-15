# By mision_thi
scoreboard players set @s thi_return 0

# Check if target changed something, if so update storage and return 0
# execute if entity @s[tag=thi_update] run say has tag (actor)
execute if entity @s[tag=thi_update] run function thi_endergui:endergui/gui_change/setup with storage thi_endergui:storage Temp
execute if entity @s[tag=thi_update] store result score @s thi_return run function thi_pocket_main:api/sync_storage/remove_tag
execute if score @s thi_return matches 1 run return 0

# Clear result storage
data modify storage thi_endergui:storage Temp.result set value []

## Check which item was taken
data modify storage thi_endergui:storage Temp.type set value "gui"
function thi_pocket_main:items_changed/store_data with storage thi_endergui:storage Temp
data modify storage thi_endergui:storage Temp.loop.slots set value [12,14]
function thi_pocket_main:items_changed/main

# Trigger something based on results
function thi_pocket_gui:gui_hand/interactions/actor/edit_slots with storage thi_endergui:storage Temp
