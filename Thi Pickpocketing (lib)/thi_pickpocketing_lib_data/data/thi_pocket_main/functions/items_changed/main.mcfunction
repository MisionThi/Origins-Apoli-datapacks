# By mision_thi

# Clear result storage
data modify storage thi_endergui:storage Temp.result set value []

## Check which item was taken
# $data modify storage thi_endergui:storage Temp.type set value $(type)
# function thi_pocket_main:items_changed/store_data with storage thi_endergui:storage Temp
# data modify storage thi_endergui:storage Temp.loop.slots set value [0,1,2,3,4,5,6,7,8]
function thi_pocket_main:items_changed/loop

# Update/refresh (start)
function thi_pocket_main:items_changed/refresh with storage thi_endergui:storage Temp
