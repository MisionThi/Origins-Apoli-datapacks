# By mision_thi

# Collect data
data modify storage thi_endergui:storage Temp.UUID set from entity @s UUID
data modify storage thi_endergui:storage Temp.type set value "gui"

# Reset storage
function thi_pocket_main:api/close_gui/reset_storage with storage thi_endergui:storage Temp
