# By mision_thi

data modify storage thi_endergui:storage Temp.hand.read set value []

# Offhand
data modify storage thi_endergui:storage Temp.hand.read append from entity @s Inventory[{Slot:-106b}]

# Mainhand
data modify storage thi_endergui:storage Temp.hand.read append from entity @s SelectedItem
execute unless data entity @s SelectedItem run data modify storage thi_endergui:storage Temp.hand.read append value {id:"minecraft:air", Count: 1b}
function thi_pocket_hand:detect_change/mainhand with entity @s
