# By mision_thi

# Store the current active slot
data modify storage thi_endergui:storage Temp.action.activeslot set from storage thi_endergui:storage Temp.action.result[0].activeslot

## Edit slots
# Get the slots that are linked to the activeslot
function thi_pocket_main:edit_slots/fetch_linked_slots with storage thi_endergui:storage Temp.action

# Call functions
function thi_pocket_main:edit_slots/edit_item with storage thi_endergui:storage Temp.action
# function thi_pocket_main:general/interactions/enderchest/check with storage thi_endergui:storage Temp.interactions

# Remove activeslot
data remove storage thi_endergui:storage Temp.action.result[0]

# Recall this function
execute if data storage thi_endergui:storage Temp.action.result[] run function thi_pocket_main:edit_slots/loop
