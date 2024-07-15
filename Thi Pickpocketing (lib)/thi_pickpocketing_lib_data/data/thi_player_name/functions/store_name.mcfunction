# By mision_thi

# Store the players name in:
loot replace block 0 -64 0 container.0 loot thi_player_name:entities/player_head
data modify storage thi_player_name:storage PlayerName set from block 0 -64 0 Items[{Slot:0b}].tag.SkullOwner.Name
item replace block 0 -64 0 container.0 with air
