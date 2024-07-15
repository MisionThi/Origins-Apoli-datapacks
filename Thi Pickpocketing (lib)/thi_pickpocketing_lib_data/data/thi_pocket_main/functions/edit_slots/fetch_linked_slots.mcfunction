# By mision_thi

$data modify storage thi_endergui:storage Temp.action.target_slot set from storage thi_endergui:storage Temp.action.slot_links[{slot:$(activeslot)}].target
$data modify storage thi_endergui:storage Temp.action.actor_slot set from storage thi_endergui:storage Temp.action.slot_links[{slot:$(activeslot)}].actor
