# By mision_thi

# Make sure you have set the "thi_gui_screen" scoreboard to know which screen is open

# execute if score @s thi_gui_screen matches 2 run say close gui start
execute if score @s thi_gui_screen matches 1.. run function thi_pocket_main:api/close_gui/start with storage thi_endergui:storage Temp
