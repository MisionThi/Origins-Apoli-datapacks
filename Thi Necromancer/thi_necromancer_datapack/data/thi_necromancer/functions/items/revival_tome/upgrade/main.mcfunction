# By mision_thi

# Get data
function thi_necromancer:items/revival_tome/upgrade/get_data_from_item

# Get whitch item is correct
execute store result score @s thi_result run function thi_necromancer:items/revival_tome/upgrade/check_items

# Set storage to slot
execute if score @s thi_result matches 0 run return 0
execute if score @s thi_result matches 1 run data modify storage mision_thi:necromancer RevivalTome.temp_slot set value "first"
execute if score @s thi_result matches 2 run data modify storage mision_thi:necromancer RevivalTome.temp_slot set value "second"
execute if score @s thi_result matches 3 run data modify storage mision_thi:necromancer RevivalTome.temp_slot set value "third"
# scoreboard players reset @s thi_result

execute store result score @s thi_result run function thi_necromancer:items/revival_tome/upgrade/add_items with storage mision_thi:necromancer RevivalTome
execute if score @s thi_result matches 0 run title @a actionbar "You already have sacrificed enough items of this type"
execute if score @s thi_result matches 1 run title @s actionbar "You have sacrificed enough items of this type"
execute if score @s thi_result matches 2 run title @s actionbar "You have sacrificed enough items of this type"

execute if data storage mision_thi:necromancer RevivalTome{first_complete:1,second_complete:1,third_complete:1} run function thi_necromancer:items/revival_tome/upgrade/give_item
execute unless data storage mision_thi:necromancer RevivalTome{first_complete:1,second_complete:1,third_complete:1} run function thi_necromancer:items/revival_tome/upgrade/give_item_incomplete with storage mision_thi:necromancer RevivalTome
