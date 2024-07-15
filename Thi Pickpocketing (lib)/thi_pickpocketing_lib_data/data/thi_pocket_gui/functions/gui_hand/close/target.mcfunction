# By mision_thi

# Collect data
data modify storage thi_endergui:storage Temp.UUID set from entity @s UUID
data modify storage thi_endergui:storage Temp.type set value "hand"

# Reset storage
function thi_pocket_main:api/close_gui/reset_storage with storage thi_endergui:storage Temp

# Revoke powers
power revoke @s thi_pocket_hand:hand_changes
