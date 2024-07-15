# By mision_thi

# Setup storage to be able to detect changes
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].gui.current set from entity @s EnderItems
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].gui.start set from entity @s EnderItems
