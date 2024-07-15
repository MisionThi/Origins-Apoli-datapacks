# By mision_thi

# Make sure you have set the "thi_gui_screen" scoreboard to know which screen is open
execute if score @s thi_gui_screen matches 1 run function thi_pocket_gui:gui_player/open/actor_commands
execute if score @s thi_gui_screen matches 2 run function thi_pocket_gui:gui_hotbar/open/actor_commands
execute if score @s thi_gui_screen matches 3 run function thi_pocket_gui:gui_armor/open/actor_commands
execute if score @s thi_gui_screen matches 4 run function thi_pocket_gui:gui_inventory/open/actor_commands
execute if score @s thi_gui_screen matches 5 run function thi_pocket_gui:gui_hand/open/actor_commands

execute if score @s thi_gui_screen matches 10 run function thi_pocket_gui:menu/gui_player/open/actor_commands
execute if score @s thi_gui_screen matches 11 run function thi_pocket_gui:menu/gui_hotbar/open/actor_commands
execute if score @s thi_gui_screen matches 12 run function thi_pocket_gui:menu/gui_armor/open/actor_commands
execute if score @s thi_gui_screen matches 13 run function thi_pocket_gui:menu/gui_inventory/open/actor_commands
execute if score @s thi_gui_screen matches 14 run function thi_pocket_gui:menu/gui_hand/open/actor_commands
