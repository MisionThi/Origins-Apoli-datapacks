# By mision_thi

# This function will create the pickpocket gui, and store the normal enderchest
# Call the "thi_pickpocket:gui/hotbar/store" function on the target before calling this function <----------------------------------------------

## GUI-Layout
# Take hotbar items
item replace entity @s enderchest.9 from block 0 -64 0 container.9
item replace entity @s enderchest.10 from block 0 -64 0 container.10
item replace entity @s enderchest.11 from block 0 -64 0 container.11
item replace entity @s enderchest.12 from block 0 -64 0 container.12
item replace entity @s enderchest.13 from block 0 -64 0 container.13
item replace entity @s enderchest.14 from block 0 -64 0 container.14
item replace entity @s enderchest.15 from block 0 -64 0 container.15
item replace entity @s enderchest.16 from block 0 -64 0 container.16
item replace entity @s enderchest.17 from block 0 -64 0 container.17

## GUI-Layout
function thi_pocket_gui:gui_hotbar/mask

# Setup GUI changed detection
function thi_endergui:endergui/gui_change/start_setup
