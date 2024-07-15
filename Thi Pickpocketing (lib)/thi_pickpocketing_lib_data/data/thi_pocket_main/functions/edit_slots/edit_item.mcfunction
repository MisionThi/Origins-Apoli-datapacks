# By mision_thi

# Text message
# $say item replace entity $(player) $(to_type).$(target_slot) from entity @s $(from_type).$(actor_slot)

# Replace item with the item from the other player
$execute store success score @s thi_return run item replace entity $(player) $(to_type).$(target_slot) from entity @s $(from_type).$(actor_slot)

# Check if the replacement was a fail (for example with armor items)
$execute if score @s thi_return matches 0 run data modify storage thi_endergui:storage Temp.return.items append from entity @s EnderItems[{Slot:$(activeslot)b}]
execute if score @s thi_return matches 0 run function thi_endergui:endergui/return_items/main
