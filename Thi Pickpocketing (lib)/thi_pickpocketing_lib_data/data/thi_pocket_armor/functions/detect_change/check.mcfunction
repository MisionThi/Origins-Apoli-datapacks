# By mision_thi

# read armor
function thi_pocket_armor:detect_change/read_armor

# Store the CurrentGui
$execute store result score @s thi_return run data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].armor.current set from storage thi_endergui:storage Temp.armor.read

# Test lines
# $execute if score @s thi_return matches 1 run tellraw @p ["",{"nbt":"Players[{UUID:$(UUID)}].armor.current","storage":"thi_endergui:storage"},{"text":" current","color":"dark_red"}]
# $execute if score @s thi_return matches 1 run tellraw @p ["",{"nbt":"Players[{UUID:$(UUID)}].armor.start","storage":"thi_endergui:storage"},{"text":" start","color":"dark_red"}]
