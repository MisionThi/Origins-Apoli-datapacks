# By mision_thi
scoreboard players set @s thi_return 0

execute if entity @s[tag=thi_update_remove] run tag @s remove thi_update
execute if entity @s[tag=thi_update_remove] run tag @s remove thi_update_remove

# Check if actor changed something, if so update storage and return 0
# execute if entity @s[tag=thi_update] run say has tag (target)
execute if entity @s[tag=thi_update] run function thi_pocket_armor:detect_change/setup with storage thi_endergui:storage Temp
execute if entity @s[tag=thi_update] store result score @s thi_return run function thi_pocket_main:api/sync_storage/remove_tag
execute if score @s thi_return matches 1 run return 0

# Clear result storage
data modify storage thi_endergui:storage Temp.result set value []

## Check which item was taken
data modify storage thi_endergui:storage Temp.type set value "armor"
function thi_pocket_main:items_changed/store_data with storage thi_endergui:storage Temp
data modify storage thi_endergui:storage Temp.loop.slots set value [100,101,102,103]
function thi_pocket_main:items_changed/main

# Trigger something based on results
function thi_pocket_gui:menu/gui_armor/interactions/target/edit_slots with storage thi_endergui:storage Temp
