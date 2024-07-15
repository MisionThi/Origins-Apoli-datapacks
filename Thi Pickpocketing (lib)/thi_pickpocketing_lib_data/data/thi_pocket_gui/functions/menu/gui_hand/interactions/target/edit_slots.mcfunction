# By mision_thi

$data modify storage thi_endergui:storage Temp.action.slot_links set value [{slot:-106,actor:"offhand",target:12},{slot:$(slot),actor:"mainhand",target:14}]
$data modify storage thi_endergui:storage Temp.action.player set from storage thi_endergui:storage Players[{UUID:$(UUID)}].actor.name
data modify storage thi_endergui:storage Temp.action.to_type set value "enderchest"
data modify storage thi_endergui:storage Temp.action.from_type set value "weapon"

# Detect if mainhand slot changed if so add to result
$scoreboard players set @s thi_activeslot_old $(slot)
$execute unless score @s thi_activeslot = @s thi_activeslot_old unless data storage thi_endergui:storage Temp.action.result[] run data modify storage thi_endergui:storage Temp.action.result append value {type:"add", activeslot:$(slot)}
$execute if score @s thi_activeslot = @s thi_activeslot_old if data storage thi_endergui:storage Temp.action.result[] run data modify storage thi_endergui:storage Temp.action.result append value {type:"add", activeslot:$(slot)}
execute store result score @s thi_activeslot run data get entity @s SelectedItemSlot

function thi_pocket_main:edit_slots/main

# Update actor (otherwise the actor will run the commands too)
# function thi_pocket_main:api/sync_storage/update_tag with storage thi_endergui:storage Temp.action
