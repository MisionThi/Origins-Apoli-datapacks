# By mision_thi

setblock 0 -64 0 minecraft:yellow_shulker_box

loot replace block 0 -64 0 container.0 loot player_compass:entities/player_head
data modify storage player_compass:storage PlayerName set from block 0 -64 0 Items[{Slot:0b}].tag.SkullOwner.Name
item replace block 0 -64 0 container.0 with air

setblock 0 -64 0 minecraft:bedrock
