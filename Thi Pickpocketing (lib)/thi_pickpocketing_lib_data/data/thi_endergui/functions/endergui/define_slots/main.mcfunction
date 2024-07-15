# By mision_thi

# Before calling this function set "thi_endergui:storage Temp.setup.type" to the the correct value.
# And store the slots that are that type in "thi_endergui:storage Temp.setup.slots" array.

# Examples to run before calling this function
# data modify storage thi_endergui:storage Temp.setup.type set value 0
# data modify storage thi_endergui:storage Temp.setup.slots set value [0,1,2,3]

# Store the current active slot
data modify storage thi_endergui:storage Temp.setup.activeslot set from storage thi_endergui:storage Temp.setup.slots[0]

# Modify the item in the slot
execute if data storage thi_endergui:storage Temp.setup.slots[] run function thi_endergui:endergui/define_slots/modify_slot with storage thi_endergui:storage Temp.setup

# Remove activeslot
data remove storage thi_endergui:storage Temp.setup.slots[0]

# Recall this function
execute if data storage thi_endergui:storage Temp.setup.slots[] run function thi_endergui:endergui/define_slots/main
