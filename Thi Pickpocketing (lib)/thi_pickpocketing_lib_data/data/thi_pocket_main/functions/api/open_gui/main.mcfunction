# By mision_thi

## Target commands
# Store the UUID from the target
data modify storage thi_endergui:storage Temp.UUID set from entity @a[tag=thi_target,limit=1] UUID
# Save actor's name in the storage from the target
execute as @a[tag=thi_actor,limit=1] at @s run function thi_pocket_main:storage/save_actor with storage thi_endergui:storage Temp
# Store gui target score in scoreboard
$scoreboard players set @a[tag=thi_target,limit=1] thi_gui_target $(page)

# Store the data from the target (gui specific)
# Grant target power to detect data changes (namespace specific <- gui specific)
execute as @a[tag=thi_target,limit=1] at @s run function #thi_pocket_main:target_commands

## Actor commands
# Store the UUID from the actor
data modify storage thi_endergui:storage Temp.UUID set from entity @a[tag=thi_actor,limit=1] UUID
# Save target's name in the storage from the actor
execute as @a[tag=thi_target,limit=1] at @s run function thi_pocket_main:storage/save_target with storage thi_endergui:storage Temp
# Store gui target score in scoreboard
$scoreboard players set @a[tag=thi_actor,limit=1] thi_gui_screen $(page)
$scoreboard players set @a[tag=thi_actor,limit=1] thi_gui_screen_old $(page)

# Storage EnderItems
# Create player's instance in storage
execute as @a[tag=thi_actor,limit=1] at @s run function thi_endergui:enderchest/uuid_add/main
# Store the enderchest items in the players storage
execute as @a[tag=thi_actor,limit=1] at @s run function thi_endergui:enderchest/store/main
# Empty enderchest
execute as @a[tag=thi_actor,limit=1] at @s run function thi_endergui:enderchest/reset_enderchest

## Grant force_close powers
power grant @a[tag=thi_target,limit=1] thi_pocket_main:force_close/target
power grant @a[tag=thi_actor,limit=1] thi_pocket_main:force_close/actor

## Add tags to players so we know what the player is doing
tag @a[tag=thi_actor,limit=1] add thi_pickpocketing
tag @a[tag=thi_target,limit=1] add thi_pickpocketed

## Open GUI
# Setup GUI (gui specific)
execute as @a[tag=thi_actor,limit=1] at @s run function #thi_pocket_main:actor_commands
# Grant actor close_gui power
power grant @a[tag=thi_actor,limit=1] thi_endergui:close_gui

## Remove tags
tag @a[tag=thi_actor,limit=1] remove thi_actor
tag @a[tag=thi_target,limit=1] remove thi_target
