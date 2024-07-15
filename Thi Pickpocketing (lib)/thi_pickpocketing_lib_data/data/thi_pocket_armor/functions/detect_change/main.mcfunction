# By mision_thi

# Store UUID temp
data modify storage thi_endergui:storage Temp.UUID set from entity @s UUID

# Check if uuid already uuid_exists
execute store result score @s thi_return run function thi_endergui:enderchest/uuid_exists/main

# Actions based on if statement
execute if score @s thi_return matches 0 run function thi_endergui:enderchest/uuid_add/main
execute store result score @s thi_return run function thi_pocket_armor:detect_change/check with storage thi_endergui:storage Temp

# Run if a change is detected (function to call when change is detected, linked by thi_gui_target)
execute if score @s thi_return matches 1 run function #thi_pocket_armor:armor_changes
# execute if score @s thi_return matches 1 run say armor change
