# By mision_thi

# Based on mode
execute if score @s thi_index_target matches 1 run data modify storage thi_endergui:storage Temp.action.slot_links set value [{slot:9,actor:0,target:1},{slot:10,actor:1,target:2},{slot:11,actor:2,target:3},{slot:12,actor:3,target:4},{slot:13,actor:4,target:5},{slot:14,actor:5,target:6},{slot:15,actor:6,target:7},{slot:16,actor:7,target:10},{slot:17,actor:8,target:11},{slot:18,actor:9,target:12},{slot:19,actor:10,target:13},{slot:20,actor:11,target:14},{slot:21,actor:12,target:15},{slot:22,actor:13,target:16},{slot:23,actor:14,target:19},{slot:24,actor:15,target:20},{slot:25,actor:16,target:21},{slot:26,actor:17,target:22},{slot:27,actor:18,target:23},{slot:28,actor:19,target:24},{slot:29,actor:20,target:25}]

execute if score @s thi_index_target matches 2 run data modify storage thi_endergui:storage Temp.action.slot_links set value [{slot:17,actor:8,target:1},{slot:18,actor:9,target:2},{slot:19,actor:10,target:3},{slot:20,actor:11,target:4},{slot:21,actor:12,target:5},{slot:22,actor:13,target:6},{slot:23,actor:14,target:7},{slot:24,actor:15,target:10},{slot:25,actor:16,target:11},{slot:26,actor:17,target:12},{slot:27,actor:18,target:13},{slot:28,actor:19,target:14},{slot:29,actor:20,target:15},{slot:30,actor:21,target:16},{slot:31,actor:22,target:20},{slot:32,actor:23,target:21},{slot:33,actor:24,target:22},{slot:34,actor:25,target:23},{slot:35,actor:26,target:24}]

$data modify storage thi_endergui:storage Temp.action.player set from storage thi_endergui:storage Players[{UUID:$(UUID)}].actor.name
data modify storage thi_endergui:storage Temp.action.to_type set value "enderchest"
data modify storage thi_endergui:storage Temp.action.from_type set value "inventory"

function thi_pocket_main:edit_slots/main

# Update actor (otherwise the actor will run the commands too)
# function thi_pocket_main:api/sync_storage/update_tag with storage thi_endergui:storage Temp.action
