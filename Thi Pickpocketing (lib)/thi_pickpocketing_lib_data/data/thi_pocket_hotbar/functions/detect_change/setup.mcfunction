# By mision_thi

# read hotbar
function thi_pocket_hotbar:detect_change/read_hotbar

# Setup storage to be able to detect changes
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].hotbar.current set from storage thi_endergui:storage Temp.hotbar.read
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].hotbar.start set from storage thi_endergui:storage Temp.hotbar.read
