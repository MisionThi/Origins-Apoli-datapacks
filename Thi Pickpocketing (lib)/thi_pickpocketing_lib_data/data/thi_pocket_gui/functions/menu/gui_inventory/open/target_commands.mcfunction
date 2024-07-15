# By mision_thi

# Save the items in the shulkerbox
execute as @a[tag=thi_target,limit=1] at @s run function thi_pocket_gui:menu/gui_inventory/template/mode_1/get_inventory

# Grant specific power to detect changes
power grant @a[tag=thi_target,limit=1] thi_pocket_inventory:inventory_changes

# Start with index 1
scoreboard players set @a[tag=thi_target,limit=1] thi_index_target 1
