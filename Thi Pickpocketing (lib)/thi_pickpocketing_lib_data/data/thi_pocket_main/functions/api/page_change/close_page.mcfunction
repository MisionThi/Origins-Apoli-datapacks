# By mision_thi

# Make sure correct page is closed
scoreboard players operation @s thi_gui_screen_old = @s thi_gui_screen
$scoreboard players set @s thi_gui_screen $(page)

## Call close function
# $say close page $(page)

# Add tags to users
function thi_pocket_main:api/add_edit_tags/main

## Call actor commands
# Clear ender_chest
execute as @a[limit=1,tag=thi_actor] at @s run function thi_endergui:enderchest/reset_enderchest
# Reset storage
execute as @a[limit=1,tag=thi_actor] at @s run function #thi_pocket_main:actor_close
# Force update if page number is higher the new page number
execute as @a[limit=1,tag=thi_actor] at @s run item replace entity @s enderchest.26 with minecraft:dirt

## Call target commands
# Reset storage & Revoke power
execute as @a[limit=1,tag=thi_target] at @s run function #thi_pocket_main:target_close

# Return correct page numbers
scoreboard players operation @s thi_gui_screen = @s thi_gui_screen_old
$scoreboard players set @s thi_gui_screen_old $(page)

# Remove edit tags
tag @a[tag=thi_actor,limit=1] remove thi_actor
tag @a[tag=thi_target,limit=1] remove thi_target
