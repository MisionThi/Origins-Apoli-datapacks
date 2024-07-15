# By mision_thi

data modify storage thi_endergui:storage Temp.action.slot_links set value [{slot:9,actor:9,target:0},{slot:10,actor:10,target:1},{slot:11,actor:11,target:2},{slot:12,actor:12,target:3},{slot:13,actor:13,target:4},{slot:14,actor:14,target:5},{slot:15,actor:15,target:6},{slot:16,actor:16,target:7},{slot:17,actor:17,target:8}]
$data modify storage thi_endergui:storage Temp.action.player set from storage thi_endergui:storage Players[{UUID:$(UUID)}].target.name
data modify storage thi_endergui:storage Temp.action.to_type set value "hotbar"
data modify storage thi_endergui:storage Temp.action.from_type set value "enderchest"

function thi_pocket_main:edit_slots/main

# Update target (otherwise the target will run the commands too)
# function thi_pocket_main:api/sync_storage/update_tag with storage thi_endergui:storage Temp.action
