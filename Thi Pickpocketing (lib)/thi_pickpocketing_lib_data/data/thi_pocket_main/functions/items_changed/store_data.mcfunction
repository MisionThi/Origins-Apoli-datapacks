# By mision_thi

# Store the data from the user (start and current) to the Temp storage
$data modify storage thi_endergui:storage Temp.loop.current set from storage thi_endergui:storage Players[{UUID:$(UUID)}].$(type).current
$data modify storage thi_endergui:storage Temp.loop.start set from storage thi_endergui:storage Players[{UUID:$(UUID)}].$(type).start

# Store UUID
$data modify storage thi_endergui:storage Temp.loop.UUID set value $(UUID)
