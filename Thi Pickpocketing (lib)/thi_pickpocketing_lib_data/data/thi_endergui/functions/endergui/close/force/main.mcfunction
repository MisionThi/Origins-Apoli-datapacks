# By mision_thi

# Store current dimension
data modify storage thi_endergui:storage Temp.dimension set from entity @s Dimension

# Telpeport to close gui
execute in thi_endergui:close_gui run teleport @s ~ ~ ~

# Teleport back
function thi_endergui:endergui/close/force/teleport_back with storage thi_endergui:storage Temp

# Call the actions to close gui
function #thi_endergui:gui_closed
