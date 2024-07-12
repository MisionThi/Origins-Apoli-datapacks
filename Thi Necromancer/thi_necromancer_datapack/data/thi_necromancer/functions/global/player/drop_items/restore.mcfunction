# By mision_thi

# tellraw @a ["","Now: ",{"nbt":"Player.Temp[0]","storage":"mision_thi:necromancer"},"\n",{"score":{"name":"@s","objective":"thi_restore"}}," left to go"]

# Modify item
data modify storage mision_thi:necromancer Player.Item set from storage mision_thi:necromancer Player.Temp[0]
data remove storage mision_thi:necromancer Player.Item.Slot

# Drop items
function thi_necromancer:global/player/drop_items/summon_item with storage mision_thi:necromancer Player

# Remove item
data remove storage mision_thi:necromancer Player.Temp[0]
scoreboard players remove @s thi_restore 1

execute if score @s thi_restore matches 1.. run function thi_necromancer:global/player/drop_items/restore with storage mision_thi:necromancer Player.Temp[0]
