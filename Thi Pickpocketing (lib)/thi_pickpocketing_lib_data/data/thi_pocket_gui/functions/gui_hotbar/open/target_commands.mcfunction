# By mision_thi

# Save the items in the shulkerbox
execute as @a[tag=thi_target,limit=1] at @s run function thi_pocket_gui:gui_hotbar/template/get_hotbar

# Grant specific power to detect changes
power grant @a[tag=thi_target,limit=1] thi_pocket_hotbar:hotbar_changes
