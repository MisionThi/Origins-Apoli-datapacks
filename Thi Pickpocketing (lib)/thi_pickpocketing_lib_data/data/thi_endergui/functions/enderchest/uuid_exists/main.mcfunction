# By mision_thi

# Store UUID temp
data modify storage thi_endergui:storage Temp.UUID set from entity @s UUID

# Check if it exists
execute store result score @s thi_return run function thi_endergui:enderchest/uuid_exists/check with storage thi_endergui:storage Temp

# Return if exists
execute if score @s thi_return matches 1 run return 1
execute if score @s thi_return matches 0 run return 0
