# By mision_thi

# GUI around it
execute if score @s thi_index_screen matches 1 run function thi_pocket_gui:gui_inventory/template/mode_1/gui
execute if score @s thi_index_screen matches 2 run function thi_pocket_gui:gui_inventory/template/mode_2/gui

## Define item type's
# GUI items (should not be moved)
data modify storage thi_endergui:storage Temp.setup.type set value 0
data modify storage thi_endergui:storage Temp.setup.slots set value [8,17,26]
function thi_endergui:endergui/define_slots/main
