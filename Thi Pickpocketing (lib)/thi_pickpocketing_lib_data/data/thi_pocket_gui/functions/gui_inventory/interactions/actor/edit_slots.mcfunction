# By mision_thi

# Based on mode
execute if score @s thi_index_screen matches 1 run data modify storage thi_endergui:storage Temp.action.slot_links set value [{slot:1,actor:1,target:0},{slot:2,actor:2,target:1},{slot:3,actor:3,target:2},{slot:4,actor:4,target:3},{slot:5,actor:5,target:4},{slot:6,actor:6,target:5},{slot:7,actor:7,target:6},{slot:10,actor:10,target:7},{slot:11,actor:11,target:8},{slot:12,actor:12,target:9},{slot:13,actor:13,target:10},{slot:14,actor:14,target:11},{slot:15,actor:15,target:12},{slot:16,actor:16,target:13},{slot:19,actor:19,target:14},{slot:20,actor:20,target:15},{slot:21,actor:21,target:16},{slot:22,actor:22,target:17},{slot:23,actor:23,target:18},{slot:24,actor:24,target:19},{slot:25,actor:25,target:20}]

execute if score @s thi_index_screen matches 2 run data modify storage thi_endergui:storage Temp.action.slot_links set value [{slot:1,actor:1,target:8},{slot:2,actor:2,target:9},{slot:3,actor:3,target:10},{slot:4,actor:4,target:11},{slot:5,actor:5,target:12},{slot:6,actor:6,target:13},{slot:7,actor:7,target:14},{slot:10,actor:10,target:15},{slot:11,actor:11,target:16},{slot:12,actor:12,target:17},{slot:13,actor:13,target:18},{slot:14,actor:14,target:19},{slot:15,actor:15,target:20},{slot:16,actor:16,target:21},{slot:20,actor:20,target:22},{slot:21,actor:21,target:23},{slot:22,actor:22,target:24},{slot:23,actor:23,target:25},{slot:24,actor:24,target:26}]

$data modify storage thi_endergui:storage Temp.action.player set from storage thi_endergui:storage Players[{UUID:$(UUID)}].target.name
data modify storage thi_endergui:storage Temp.action.to_type set value "inventory"
data modify storage thi_endergui:storage Temp.action.from_type set value "enderchest"

function thi_pocket_main:edit_slots/main

# Update target (otherwise the target will run the commands too)
# function thi_pocket_main:api/sync_storage/update_tag with storage thi_endergui:storage Temp.action
