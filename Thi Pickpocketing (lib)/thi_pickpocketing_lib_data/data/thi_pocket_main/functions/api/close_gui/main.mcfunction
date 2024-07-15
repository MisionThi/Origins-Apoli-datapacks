# By mision_thi

# Call this function with "thi_endergui:storage Players[{UUID:$(UUID)}]"

# Add tags (thi_actor & thi_target)
tag @s add thi_actor
$tag $(name) add thi_target

## Call actor commands
# Store UUID
execute as @a[limit=1,tag=thi_actor] at @s run data modify storage thi_endergui:storage Temp.UUID set from entity @s UUID
# Clear ender_chest
execute as @a[limit=1,tag=thi_actor] at @s run function thi_endergui:enderchest/reset_enderchest
# Restore items
execute as @a[limit=1,tag=thi_actor] at @s run function thi_endergui:enderchest/restore/main
# Reset storage
execute as @a[limit=1,tag=thi_actor] at @s run function #thi_pocket_main:actor_close

## Call target commands
# Reset storage & Revoke power
execute as @a[limit=1,tag=thi_target] at @s run function #thi_pocket_main:target_close

## Revoke force_close powers
resource set @a[tag=thi_target,limit=1] thi_pocket_main:force_close/target_leave_world_resource 1
power revoke @a[tag=thi_target,limit=1] thi_pocket_main:force_close/target
resource set @a[tag=thi_actor,limit=1] thi_pocket_main:force_close/actor_leave_world_resource 1
power revoke @a[tag=thi_actor,limit=1] thi_pocket_main:force_close/actor

## Remove pickpocketing tags
tag @a[tag=thi_actor,limit=1] remove thi_pickpocketing
tag @a[tag=thi_target,limit=1] remove thi_pickpocketed

## Remove tags
tag @a[tag=thi_actor,limit=1] remove thi_actor
tag @a[tag=thi_target,limit=1] remove thi_target

# Close message
execute if score @s thi_gui_screen_old = @s thi_gui_screen run title @s actionbar "The pickpocket screen has been closed."
