# By mision_thi

# Make sure you have set the "thi_gui_screen" scoreboard to know which screen is open

# execute if score @s thi_gui_screen matches 1 run say something changed
execute if score @s thi_gui_screen matches 1 run function thi_pocket_gui:gui_player/start
execute if score @s thi_gui_screen matches 2 run function thi_pocket_gui:gui_hotbar/start
execute if score @s thi_gui_screen matches 3 run function thi_pocket_gui:gui_armor/start
execute if score @s thi_gui_screen matches 4 run function thi_pocket_gui:gui_inventory/start
execute if score @s thi_gui_screen matches 5 run function thi_pocket_gui:gui_hand/start

execute if score @s thi_gui_screen matches 10 run function thi_pocket_gui:menu/gui_player/start
execute if score @s thi_gui_screen matches 11 run function thi_pocket_gui:menu/gui_hotbar/start
execute if score @s thi_gui_screen matches 12 run function thi_pocket_gui:menu/gui_armor/start
execute if score @s thi_gui_screen matches 13 run function thi_pocket_gui:menu/gui_inventory/start
execute if score @s thi_gui_screen matches 14 run function thi_pocket_gui:menu/gui_hand/start
