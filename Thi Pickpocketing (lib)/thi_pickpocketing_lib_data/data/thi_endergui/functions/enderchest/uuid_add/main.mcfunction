# By mision_thi

# Store UUID temp
data modify storage thi_endergui:storage Temp.UUID set from entity @s UUID

# Check if uuid already uuid_exists
execute store result score @s thi_return run function thi_endergui:enderchest/uuid_exists/main

execute if score @s thi_return matches 1 run function thi_endergui:enderchest/uuid_reset/reset with storage thi_endergui:storage Temp
execute if score @s thi_return matches 0 run function thi_endergui:enderchest/uuid_add/add with storage thi_endergui:storage Temp
