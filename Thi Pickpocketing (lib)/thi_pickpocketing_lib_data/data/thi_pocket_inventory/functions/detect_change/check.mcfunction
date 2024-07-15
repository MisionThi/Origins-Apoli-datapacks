# By mision_thi

# read inventory
function thi_pocket_inventory:detect_change/read_inventory

# Store the CurrentGui
$execute store result score @s thi_return run data modify storage thi_endergui:storage Players[{UUID:$(UUID)}].inventory.current set from storage thi_endergui:storage Temp.inventory.read

# Test lines
# $execute if score @s thi_return matches 1 run tellraw @p ["",{"nbt":"Players[{UUID:$(UUID)}].inventory.current","storage":"thi_endergui:storage"},{"text":" current","color":"dark_red"}]
# $execute if score @s thi_return matches 1 run tellraw @p ["",{"nbt":"Players[{UUID:$(UUID)}].inventory.start","storage":"thi_endergui:storage"},{"text":" start","color":"dark_red"}]
