# By mision_thi

# read armor
function thi_pocket_armor:detect_change/read_armor

# Setup storage to be able to detect changes
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].armor.current set from storage thi_endergui:storage Temp.armor.read
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].armor.start set from storage thi_endergui:storage Temp.armor.read
