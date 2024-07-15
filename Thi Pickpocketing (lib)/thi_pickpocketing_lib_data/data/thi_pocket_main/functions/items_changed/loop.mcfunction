# By mision_thi

# Store the UUID in the "Temp.interactions.UUID" otherwise we can't check what changed
# And store the slots that are that type in "thi_endergui:storage Temp.interactions.slots" array.

# Examples to run before calling this function
# data modify storage thi_endergui:storage Temp.interactions.slots set value [0,1,2,3]

# Store the current active slot
data modify storage thi_endergui:storage Temp.loop.activeslot set from storage thi_endergui:storage Temp.loop.slots[0]

# Check what changed
function thi_pocket_main:items_changed/check with storage thi_endergui:storage Temp.loop

# Remove activeslot
data remove storage thi_endergui:storage Temp.loop.slots[0]

# Recall this function
execute if data storage thi_endergui:storage Temp.loop.slots[] run function thi_pocket_main:items_changed/loop
