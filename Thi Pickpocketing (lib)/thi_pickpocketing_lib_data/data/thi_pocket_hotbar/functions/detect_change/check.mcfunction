# By mision_thi

# read hotbar
function thi_pocket_hotbar:detect_change/read_hotbar

# Store the CurrentGui
$execute store result score @s thi_return run data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].hotbar.current set from storage thi_endergui:storage Temp.hotbar.read

# Test lines
# $execute if score @s thi_return matches 1 run tellraw @p ["",{"nbt":"Players[{UUID:$(UUID)}].hotbar.current","storage":"thi_endergui:storage"},{"text":" current","color":"dark_red"}]
# $execute if score @s thi_return matches 1 run tellraw @p ["",{"nbt":"Players[{UUID:$(UUID)}].hotbar.start","storage":"thi_endergui:storage"},{"text":" start","color":"dark_red"}]
