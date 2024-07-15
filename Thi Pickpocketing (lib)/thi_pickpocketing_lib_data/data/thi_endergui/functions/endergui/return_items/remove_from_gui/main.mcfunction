# By mision_thi

data modify storage thi_endergui:storage Temp.return.slot set from storage thi_endergui:storage Temp.return.items[0].Slot
function thi_endergui:endergui/return_items/remove_from_gui/remove with storage thi_endergui:storage Temp.return

# Remove item from storage
data remove storage thi_endergui:storage Temp.return.items[0]
scoreboard players remove @s thi_return 1

# Recall if nesecary
execute if score @s thi_return matches 1.. run function thi_endergui:endergui/return_items/remove_from_gui/main
