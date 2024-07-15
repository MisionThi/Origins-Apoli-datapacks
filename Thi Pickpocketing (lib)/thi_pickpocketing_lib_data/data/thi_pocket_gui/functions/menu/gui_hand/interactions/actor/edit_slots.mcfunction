# By mision_thi

data modify storage thi_endergui:storage Temp.action.slot_links set value [{slot:12,actor:12,target:"offhand"},{slot:14,actor:14,target:"mainhand"}]
$data modify storage thi_endergui:storage Temp.action.player set from storage thi_endergui:storage Players[{UUID:$(UUID)}].target.name
data modify storage thi_endergui:storage Temp.action.to_type set value "weapon"
data modify storage thi_endergui:storage Temp.action.from_type set value "enderchest"

function thi_pocket_main:edit_slots/main

# Update target (otherwise the target will run the commands too)
# function thi_pocket_main:api/sync_storage/update_tag with storage thi_endergui:storage Temp.action
