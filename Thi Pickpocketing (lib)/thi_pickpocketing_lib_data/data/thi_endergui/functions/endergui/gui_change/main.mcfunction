# By mision_thi

# Store UUID temp
data modify storage thi_endergui:storage Temp.UUID set from entity @s UUID

# Check if uuid already uuid_exists
execute store result score @s thi_return run function thi_endergui:enderchest/uuid_exists/main

# Actions based on if statement
execute if score @s thi_return matches 0 run function thi_endergui:enderchest/uuid_add/main
execute store result score @s thi_return run function thi_endergui:endergui/gui_change/check with storage thi_endergui:storage Temp

# Run if a change is detected
execute if score @s thi_return matches 1 run function #thi_endergui:gui_list

# Kill dropped items
kill @e[type=item,nbt={Item:{tag:{type:0}}}]
