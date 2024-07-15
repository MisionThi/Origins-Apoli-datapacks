# By mision_thi

data modify storage thi_endergui:storage Temp.action.slot_links set value [{slot:0,actor:0,target:9},{slot:1,actor:1,target:10},{slot:2,actor:2,target:11},{slot:3,actor:3,target:12},{slot:4,actor:4,target:13},{slot:5,actor:5,target:14},{slot:6,actor:6,target:15},{slot:7,actor:7,target:16},{slot:8,actor:8,target:17}]
$data modify storage thi_endergui:storage Temp.action.player set from storage thi_endergui:storage Players[{UUID:$(UUID)}].actor.name
data modify storage thi_endergui:storage Temp.action.to_type set value "enderchest"
data modify storage thi_endergui:storage Temp.action.from_type set value "hotbar"

function thi_pocket_main:edit_slots/main

# Update actor (otherwise the actor will run the commands too)
# function thi_pocket_main:api/sync_storage/update_tag with storage thi_endergui:storage Temp.action
