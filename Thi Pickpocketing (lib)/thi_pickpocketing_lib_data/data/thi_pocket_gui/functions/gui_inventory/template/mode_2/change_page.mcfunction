# By mision_thi

# This function will create the pickpocket gui, and store the normal enderchest

# Empty enderchest
function thi_endergui:enderchest/reset_enderchest

## GUI-Layout
# Take inventory items (mode 1)
item replace entity @s enderchest.1 from block 0 -64 0 container.1
item replace entity @s enderchest.2 from block 0 -64 0 container.2
item replace entity @s enderchest.3 from block 0 -64 0 container.3
item replace entity @s enderchest.4 from block 0 -64 0 container.4
item replace entity @s enderchest.5 from block 0 -64 0 container.5
item replace entity @s enderchest.6 from block 0 -64 0 container.6
item replace entity @s enderchest.7 from block 0 -64 0 container.7
item replace entity @s enderchest.10 from block 0 -64 0 container.10
item replace entity @s enderchest.11 from block 0 -64 0 container.11
item replace entity @s enderchest.12 from block 0 -64 0 container.12
item replace entity @s enderchest.13 from block 0 -64 0 container.13
item replace entity @s enderchest.14 from block 0 -64 0 container.14
item replace entity @s enderchest.15 from block 0 -64 0 container.15
item replace entity @s enderchest.16 from block 0 -64 0 container.16
item replace entity @s enderchest.20 from block 0 -64 0 container.20
item replace entity @s enderchest.21 from block 0 -64 0 container.21
item replace entity @s enderchest.22 from block 0 -64 0 container.22
item replace entity @s enderchest.23 from block 0 -64 0 container.23
item replace entity @s enderchest.24 from block 0 -64 0 container.24


# GUI around it
function thi_pocket_gui:gui_inventory/template/mode_1/gui

## Define item type's
# GUI items (should not be moved)
data modify storage thi_endergui:storage Temp.setup.type set value 0
data modify storage thi_endergui:storage Temp.setup.slots set value [17,26]
function thi_endergui:endergui/define_slots/main
