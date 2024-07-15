# By mision_thi

# Save the items in the shulkerbox
execute as @a[tag=thi_target,limit=1] at @s run function thi_pocket_gui:gui_armor/template/get_armor

# Grant specific power to detect changes
power grant @a[tag=thi_target,limit=1] thi_pocket_armor:armor_changes
