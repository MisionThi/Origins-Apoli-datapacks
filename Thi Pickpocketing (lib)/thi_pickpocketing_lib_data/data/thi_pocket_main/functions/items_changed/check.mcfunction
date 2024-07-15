# By mision_thi

# tellraw @s ["","Current ",{"nbt":"Temp.loop.current","storage":"thi_endergui:storage"}]
# tellraw @s ["","Start ",{"nbt":"Temp.loop.start","storage":"thi_endergui:storage"}]

# Reset storage
data modify storage thi_endergui:storage Temp.loop.item set value {}

## Check if item was added from a certain slot
$data modify storage thi_endergui:storage Temp.loop.item set from storage thi_endergui:storage Temp.loop.start[{Slot:$(activeslot)b}]
$execute store success score @s thi_return run data modify storage thi_endergui:storage Temp.loop.item set from storage thi_endergui:storage Temp.loop.current[{Slot:$(activeslot)b}]
# Return what changed
# $execute if score @s thi_return matches 1 run say $(activeslot)
$execute if score @s thi_return matches 1 run data modify storage thi_endergui:storage Temp.action.result prepend value {type:"add", activeslot:$(activeslot)}

# OLD
# execute if score @s thi_return matches 1 run data modify storage thi_endergui:storage Temp.action.result prepend value {type:"add"}
# $execute if score @s thi_return matches 1 run data modify storage thi_endergui:storage Temp.action.result[0].item set from storage thi_endergui:storage Temp.loop.current[{Slot:$(activeslot)b}]
# execute if score @s thi_return matches 1 run tellraw @s [{"nbt":"Temp.action.result[0]","storage":"thi_endergui:storage"}]



# Reset storage
data modify storage thi_endergui:storage Temp.loop.item set value {}

## Check if item was removed from a certain slot
$data modify storage thi_endergui:storage Temp.loop.item set from storage thi_endergui:storage Temp.loop.current[{Slot:$(activeslot)b}]
$execute store success score @s thi_return run data modify storage thi_endergui:storage Temp.loop.item set from storage thi_endergui:storage Temp.loop.start[{Slot:$(activeslot)b}]
# Return what changed
# $execute if score @s thi_return matches 1 run say $(activeslot)
$execute if score @s thi_return matches 1 run data modify storage thi_endergui:storage Temp.action.result prepend value {type:"remove", activeslot:$(activeslot)}

# OLD
# execute if score @s thi_return matches 1 run data modify storage thi_endergui:storage Temp.action.result prepend value {type:"remove"}
# $execute if score @s thi_return matches 1 run data modify storage thi_endergui:storage Temp.action.result[0].item set from storage thi_endergui:storage Temp.loop.start[{Slot:$(activeslot)b}]
# execute if score @s thi_return matches 1 run tellraw @s [{"nbt":"Temp.action.result[0]","storage":"thi_endergui:storage"}]
