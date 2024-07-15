# By mision_thi

# read hand
function thi_pocket_hand:detect_change/read_hand

# Store the CurrentGui
$execute store result score @s thi_return run data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].hand.current set from storage thi_endergui:storage Temp.hand.read
# execute if score @s thi_activeslot = @s thi_activeslot_old run scoreboard players set @s thi_return 1

# Test lines
# $execute if score @s thi_return matches 1 run tellraw @p ["",{"nbt":"Players[{UUID:$(UUID)}].hand.current","storage":"thi_endergui:storage"},{"text":" current","color":"dark_red"}]
# $execute if score @s thi_return matches 1 run tellraw @p ["",{"nbt":"Players[{UUID:$(UUID)}].hand.start","storage":"thi_endergui:storage"},{"text":" start","color":"dark_red"}]
