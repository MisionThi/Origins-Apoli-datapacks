# By mision_thi

# Make sure you have set the "thi_gui_target" scoreboard to know which screen is open

# execute if score @s thi_gui_target matches 1 run say something changed
# execute if score @s thi_gui_target matches 2 run say tag hotbar changed
execute if score @s thi_gui_target matches 2 run function thi_pocket_gui:gui_hotbar/interactions/target/check_item_changed
execute if score @s thi_gui_target matches 3 run function thi_pocket_gui:gui_armor/interactions/target/check_item_changed
execute if score @s thi_gui_target matches 4 run function thi_pocket_gui:gui_inventory/interactions/target/check_item_changed
execute if score @s thi_gui_target matches 5 run function thi_pocket_gui:gui_hand/interactions/target/check_item_changed

execute if score @s thi_gui_target matches 11 run function thi_pocket_gui:menu/gui_hotbar/interactions/target/check_item_changed
execute if score @s thi_gui_target matches 12 run function thi_pocket_gui:menu/gui_armor/interactions/target/check_item_changed
execute if score @s thi_gui_target matches 13 run function thi_pocket_gui:menu/gui_inventory/interactions/target/check_item_changed
execute if score @s thi_gui_target matches 14 run function thi_pocket_gui:menu/gui_hand/interactions/target/check_item_changed
