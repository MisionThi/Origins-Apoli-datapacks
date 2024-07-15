# By mision_thi

# read hand
function thi_pocket_hand:detect_change/read_hand

# Setup storage to be able to detect changes
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].hand.current set from storage thi_endergui:storage Temp.hand.read
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].hand.start set from storage thi_endergui:storage Temp.hand.read
