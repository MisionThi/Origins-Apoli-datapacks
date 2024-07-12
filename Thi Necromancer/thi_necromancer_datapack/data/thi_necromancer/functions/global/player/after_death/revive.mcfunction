# By mision_thi

# Clear skeleton_skull
clear @s minecraft:skeleton_skull{RespawnSkull:1b} 1

# Teleport
$execute as $(Name) at @s run function thi_necromancer:global/player/teleport with storage mision_thi:necromancer Player.LastDeathLocation

# Return items
$execute as $(Name) at @s run function thi_necromancer:global/player/restore_items/start

# Revoke power
$power revoke $(Name) thi_necromancer:global/player/ghost
$power revoke $(Name) thi_necromancer:global/player/let_me_respawn/dropped
$power revoke $(Name) thi_necromancer:global/player/let_me_respawn/died

# Remove tag
$tag $(Name) remove thi_death_player

# Remove body
function thi_necromancer:global/player/after_death/remove_body with storage mision_thi:necromancer Player
