# By mision_thi

# read inventory
function thi_pocket_inventory:detect_change/read_inventory

# Setup storage to be able to detect changes
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].inventory.current set from storage thi_endergui:storage Temp.inventory.read
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].inventory.start set from storage thi_endergui:storage Temp.inventory.read
