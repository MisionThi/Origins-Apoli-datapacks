# By mision_thi

# Make sure you have set the "thi_gui_target" scoreboard to know which screen is open
execute if score @s thi_gui_target matches 1 run function thi_pocket_gui:gui_player/close/target
execute if score @s thi_gui_target matches 2 run function thi_pocket_gui:gui_hotbar/close/target
execute if score @s thi_gui_target matches 3 run function thi_pocket_gui:gui_armor/close/target
execute if score @s thi_gui_target matches 4 run function thi_pocket_gui:gui_inventory/close/target
execute if score @s thi_gui_target matches 5 run function thi_pocket_gui:gui_hand/close/target

execute if score @s thi_gui_target matches 10 run function thi_pocket_gui:menu/gui_player/close/target
execute if score @s thi_gui_target matches 11 run function thi_pocket_gui:menu/gui_hotbar/close/target
execute if score @s thi_gui_target matches 12 run function thi_pocket_gui:menu/gui_armor/close/target
execute if score @s thi_gui_target matches 13 run function thi_pocket_gui:menu/gui_inventory/close/target
execute if score @s thi_gui_target matches 14 run function thi_pocket_gui:menu/gui_hand/close/target
