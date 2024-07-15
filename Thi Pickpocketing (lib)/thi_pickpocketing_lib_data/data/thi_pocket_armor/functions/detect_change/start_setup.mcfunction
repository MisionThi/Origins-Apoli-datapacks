# By mision_thi

# Store UUID temp
data modify storage thi_endergui:storage Temp.UUID set from entity @s UUID

# Check if uuid already uuid_exists
execute store result score @s thi_return run function thi_endergui:enderchest/uuid_exists/main

execute if score @s thi_return matches 1 run function thi_pocket_armor:detect_change/setup with storage thi_endergui:storage Temp
