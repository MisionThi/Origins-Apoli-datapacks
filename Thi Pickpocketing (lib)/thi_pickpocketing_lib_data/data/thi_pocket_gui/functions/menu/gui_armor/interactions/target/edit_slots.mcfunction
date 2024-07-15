# By mision_thi

data modify storage thi_endergui:storage Temp.action.slot_links set value [{slot:103,actor:"head",target:10},{slot:102,actor:"chest",target:12},{slot:101,actor:"legs",target:14},{slot:100,actor:"feet",target:16}]
$data modify storage thi_endergui:storage Temp.action.player set from storage thi_endergui:storage Players[{UUID:$(UUID)}].actor.name
data modify storage thi_endergui:storage Temp.action.to_type set value "enderchest"
data modify storage thi_endergui:storage Temp.action.from_type set value "armor"

function thi_pocket_main:edit_slots/main

# Update actor (otherwise the actor will run the commands too)
# function thi_pocket_main:api/sync_storage/update_tag with storage thi_endergui:storage Temp.action
