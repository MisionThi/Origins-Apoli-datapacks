# By mision_thi

# Check if player is holding correct item
data remove storage mision_thi:necromancer RevivalTome.temp
data modify storage mision_thi:necromancer RevivalTome.temp set string entity @s Inventory[{Slot:-106b}].id 10

execute store success score @s thi_result run data modify storage mision_thi:necromancer RevivalTome.temp set from storage mision_thi:necromancer RevivalTome.first_item
execute if score @s thi_result matches 0 run return 1

execute if score @s thi_result matches 1 run data modify storage mision_thi:necromancer RevivalTome.temp set string entity @s Inventory[{Slot:-106b}].id 10
execute store success score @s thi_result run data modify storage mision_thi:necromancer RevivalTome.temp set from storage mision_thi:necromancer RevivalTome.second_item
execute if score @s thi_result matches 0 run return 2

execute if score @s thi_result matches 1 run data modify storage mision_thi:necromancer RevivalTome.temp set string entity @s Inventory[{Slot:-106b}].id 10
execute store success score @s thi_result run data modify storage mision_thi:necromancer RevivalTome.temp set from storage mision_thi:necromancer RevivalTome.third_item
execute if score @s thi_result matches 0 run return 3

return 0
