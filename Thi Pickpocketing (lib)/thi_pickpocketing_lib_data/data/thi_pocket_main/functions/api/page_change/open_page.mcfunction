# By mision_thi

# Set old screen to gui screen (for detecting page is opend for the first time)
scoreboard players operation @s thi_gui_screen_old = @s thi_gui_screen

# Add tags to users
function thi_pocket_main:api/add_edit_tags/main

# Actions
# $say open page $(page)

## Target commands
# Store gui target score in scoreboard
$scoreboard players set @a[tag=thi_target,limit=1] thi_gui_target $(page)

# Grant target power to detect data changes (namespace specific <- gui specific)
execute as @a[tag=thi_target,limit=1] at @s run function #thi_pocket_main:target_commands
execute as @a[tag=thi_target,limit=1] at @s run tag @s add thi_update_remove

## Actor commands
# Store the UUID from the actor
data modify storage thi_endergui:storage Temp.UUID set from entity @a[tag=thi_actor,limit=1] UUID
execute as @a[tag=thi_actor,limit=1] at @s run tag @s add thi_update_remove

# Store gui target score in scoreboard
$scoreboard players set @a[tag=thi_actor,limit=1] thi_gui_screen $(page)
$scoreboard players set @a[tag=thi_actor,limit=1] thi_gui_screen_old $(page)

# Setup GUI (gui specific)
execute as @a[tag=thi_actor,limit=1] at @s run function #thi_pocket_main:actor_commands

# Remove edit tags
tag @a[tag=thi_actor,limit=1] remove thi_actor
tag @a[tag=thi_target,limit=1] remove thi_target
