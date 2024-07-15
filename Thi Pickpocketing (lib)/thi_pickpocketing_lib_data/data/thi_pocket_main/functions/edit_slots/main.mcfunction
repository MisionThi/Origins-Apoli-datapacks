# By mision_thi

# This function will edit the players slots, based on the "activeslot"

# This function needs the following data:
# - "thi_endergui:storage Temp.action.result[]" output from items_changed (this gives the activeslot)
# - "thi_endergui:storage Temp.action.slot_links" you have to set this yourself before calling this function
# - "thi_endergui:storage Temp.action.player" you have to set this yourself before calling this function, example: player_name
# - "thi_endergui:storage Temp.action.to_type" you have to set this yourself before calling this function, example: enderchest
# - "thi_endergui:storage Temp.action.from_type" you have to set this yourself before calling this function, example: hotbar

# Stop if input was []
execute unless data storage thi_endergui:storage Temp.action.result[] run return 0

# Change slot links: actor_slot, target_slot, container_slot
# Start the proces
function thi_pocket_main:edit_slots/loop
