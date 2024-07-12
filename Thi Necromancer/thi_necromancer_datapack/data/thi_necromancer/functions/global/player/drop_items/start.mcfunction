# By mision_thi

# Create temp storage
data modify storage mision_thi:necromancer Player.Temp set from storage mision_thi:necromancer Player.Inventory

execute store result score @s thi_restore if data storage mision_thi:necromancer Player.Temp[]

# Restore item
execute if score @s thi_restore matches 1.. run function thi_necromancer:global/player/drop_items/restore
