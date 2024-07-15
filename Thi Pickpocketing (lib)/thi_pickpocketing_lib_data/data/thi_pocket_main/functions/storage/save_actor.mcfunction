# By mision_thi

function thi_player_name:store_name
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].actor.name set from storage thi_player_name:storage PlayerName
$data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].actor.uuid set from entity @s UUID
