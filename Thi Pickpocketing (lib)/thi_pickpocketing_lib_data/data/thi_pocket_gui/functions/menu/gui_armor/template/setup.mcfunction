# By mision_thi

# This function will create the pickpocket gui, and store the normal enderchest
# Call the "thi_pickpocket:gui/armor/store" function on the target before calling this function <----------------------------------------------

## GUI-Layout
# Take armor items
item replace entity @s enderchest.10 from block 0 -64 0 container.10
item replace entity @s enderchest.12 from block 0 -64 0 container.12
item replace entity @s enderchest.14 from block 0 -64 0 container.14
item replace entity @s enderchest.16 from block 0 -64 0 container.16

## GUI-Layout
function thi_pocket_gui:menu/gui_armor/mask

# Setup GUI changed detection
function thi_endergui:endergui/gui_change/start_setup
