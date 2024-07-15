# By mision_thi

# This function will create the pickpocket gui, and store the normal enderchest
# Call the "thi_pickpocket:gui/hand/store" function on the target before calling this function <----------------------------------------------

## GUI-Layout
# Take hand items
item replace entity @s enderchest.12 from block 0 -64 0 container.12
item replace entity @s enderchest.14 from block 0 -64 0 container.14

## GUI-Layout
function thi_pocket_gui:gui_hand/mask

# Setup GUI changed detection
function thi_endergui:endergui/gui_change/start_setup
