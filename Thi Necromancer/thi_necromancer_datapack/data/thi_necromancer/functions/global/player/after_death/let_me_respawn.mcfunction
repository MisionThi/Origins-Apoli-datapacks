# By mision_thi

# kill skeleton_skull
kill @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{RespawnSkull:1b}}}]

# Teleport player
data modify storage mision_thi:necromancer Player.LastDeathLocation.Posx set from entity @s LastDeathLocation.pos[0]
data modify storage mision_thi:necromancer Player.LastDeathLocation.Posy set from entity @s LastDeathLocation.pos[1]
data modify storage mision_thi:necromancer Player.LastDeathLocation.Posz set from entity @s LastDeathLocation.pos[2]
data modify storage mision_thi:necromancer Player.LastDeathLocation.Dimension set from entity @s LastDeathLocation.dimension
function thi_necromancer:global/player/teleport with storage mision_thi:necromancer Player.LastDeathLocation

# Remove body
function thi_necromancer:global/player/after_death/remove_body with storage mision_thi:necromancer Player

# Revoke power
$power revoke $(Name) thi_necromancer:global/player/ghost
$power revoke $(Name) thi_necromancer:global/player/let_me_respawn/dropped
$power revoke $(Name) thi_necromancer:global/player/let_me_respawn/died

# Return items
$execute as $(Name) at @s run function thi_necromancer:global/player/drop_items/start

$damage $(Name) 1000 thi_necromancer:no_resurrect

$tag $(Name) remove thi_death_player
