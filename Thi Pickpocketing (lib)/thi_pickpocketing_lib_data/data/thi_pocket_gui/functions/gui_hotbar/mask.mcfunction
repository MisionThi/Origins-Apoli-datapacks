# By mision_thi

# GUI around it
function thi_pocket_gui:gui_hotbar/template/gui

## Define item type's
# GUI items (should not be moved)
data modify storage thi_endergui:storage Temp.setup.type set value 0
data modify storage thi_endergui:storage Temp.setup.slots set value [26]
function thi_endergui:endergui/define_slots/main
