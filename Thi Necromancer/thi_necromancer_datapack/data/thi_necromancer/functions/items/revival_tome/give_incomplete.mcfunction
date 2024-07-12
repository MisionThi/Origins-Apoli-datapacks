# By mision_thi

# Select items
loot insert 0 -64 0 loot thi_necromancer:revival_tome/common
loot insert 0 -64 0 loot thi_necromancer:revival_tome/common
loot insert 0 -64 0 loot thi_necromancer:revival_tome/rare

# Save item 1 (common)
data modify storage mision_thi:necromancer RevivalTome.first_item set string block 0 -64 0 Items[0].id 10
execute store result storage mision_thi:necromancer RevivalTome.first_max_count int 1 run random value 16..96
data modify storage mision_thi:necromancer RevivalTome.first_complete set value 0b

# Save item 2 (common)
data modify storage mision_thi:necromancer RevivalTome.second_item set string block 0 -64 0 Items[1].id 10
execute store result storage mision_thi:necromancer RevivalTome.second_max_count int 1 run random value 16..96
data modify storage mision_thi:necromancer RevivalTome.second_complete set value 0b

# Save item 3 (rare)
data modify storage mision_thi:necromancer RevivalTome.third_item set string block 0 -64 0 Items[2].id 10
data modify storage mision_thi:necromancer RevivalTome.third_max_count set from block 0 -64 0 Items[2].Count
data modify storage mision_thi:necromancer RevivalTome.third_complete set value 0b

# clear shulker
data remove block 0 -64 0 Items

# Create RevivalTome
function thi_necromancer:items/revival_tome/data_incomplete with storage mision_thi:necromancer RevivalTome
