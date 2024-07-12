# By mision_thi

# Clear skeleton_skull
clear @s minecraft:skeleton_skull{RespawnSkull:1b} 1

# Remove body
function thi_necromancer:global/player/after_death/remove_body with storage mision_thi:necromancer Player

# Teleport player
$teleport $(Name) @s

# Revoke power
$power revoke $(Name) thi_necromancer:global/player/ghost
$power revoke $(Name) thi_necromancer:global/player/let_me_respawn/dropped
$power revoke $(Name) thi_necromancer:global/player/let_me_respawn/died

# Return items
$execute as $(Name) at @s run function thi_necromancer:global/player/drop_items/start

$damage $(Name) 1000 thi_necromancer:no_resurrect

$tag $(Name) remove thi_death_player
