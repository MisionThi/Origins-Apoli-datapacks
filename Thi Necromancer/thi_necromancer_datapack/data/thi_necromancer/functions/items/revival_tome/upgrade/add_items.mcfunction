# By mision_thi

# Get max_count
$execute store result score $item_count thi_result run data get storage mision_thi:necromancer RevivalTome.$(temp_slot)_max_count

# Get current
$execute store result score $item_current thi_result run data get storage mision_thi:necromancer RevivalTome.$(temp_slot)_count

# Get hand
execute store result score $item_hand thi_result run data get entity @s Inventory[{Slot:-106b}].Count 1

# Check if already full
execute if score $item_count thi_result = $item_current thi_result run return 0

# Get how many left
scoreboard players operation $item_count thi_result -= $item_current thi_result
scoreboard players operation $item_count thi_result -= $item_hand thi_result

# Check if to many items
# tellraw @p ["",{"score":{"name":"$item_count","objective":"thi_result"}},"first"]
execute unless score $item_count thi_result matches ..-1 run item modify entity @s weapon.offhand thi_necromancer:remove_items
$execute unless score $item_count thi_result matches ..-1 store result storage mision_thi:necromancer RevivalTome.$(temp_slot)_count int 1 run scoreboard players operation $item_current thi_result += $item_hand thi_result
$execute if score $item_count thi_result matches 0 run data modify storage mision_thi:necromancer RevivalTome.$(temp_slot)_complete set value 1
execute if score $item_count thi_result matches 0 run return 1
execute unless score $item_count thi_result matches ..-1 run return -1

execute if score $item_count thi_result matches ..-1 run scoreboard players operation $item_count thi_result *= $-1 thi_result
item modify entity @s weapon.offhand thi_necromancer:set_items
# tellraw @p ["",{"score":{"name":"$item_count","objective":"thi_result"}},"second"]
$data modify storage mision_thi:necromancer RevivalTome.$(temp_slot)_count set from storage mision_thi:necromancer RevivalTome.$(temp_slot)_max_count
$data modify storage mision_thi:necromancer RevivalTome.$(temp_slot)_complete set value 1
return 2
