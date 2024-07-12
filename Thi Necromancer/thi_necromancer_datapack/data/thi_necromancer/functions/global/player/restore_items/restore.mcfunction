# By mision_thi

# tellraw @a ["","Now: ",{"nbt":"Player.Temp[0]","storage":"mision_thi:necromancer"},"\n",{"score":{"name":"@s","objective":"thi_restore"}}," left to go"]

# Copy over item to Item and set slot 0b
data modify storage mision_thi:necromancer Player.Item set from storage mision_thi:necromancer Player.Temp[0]
execute store result score @s thi_slots run data get storage mision_thi:necromancer Player.Temp[0].Slot
data modify storage mision_thi:necromancer Player.Item.Slot set value 0b

# Add item to shulker
data modify block 0 -64 0 Items append from storage mision_thi:necromancer Player.Item

# Copy over item to player
execute if score @s thi_slots matches 0..35 run function thi_necromancer:global/player/restore_items/inventory with storage mision_thi:necromancer Player.Temp[0]
execute if score @s thi_slots matches 103 run item replace entity @s armor.head from block 0 -64 0 container.0
execute if score @s thi_slots matches 102 run item replace entity @s armor.chest from block 0 -64 0 container.0
execute if score @s thi_slots matches 101 run item replace entity @s armor.legs from block 0 -64 0 container.0
execute if score @s thi_slots matches 100 run item replace entity @s armor.feet from block 0 -64 0 container.0
execute if score @s thi_slots matches -106 run item replace entity @s weapon.offhand from block 0 -64 0 container.0

# Reset shulker
item replace block 0 -64 0 container.0 with air
data remove storage mision_thi:necromancer Player.Temp[0]
# execute store result score @s thi_slots run data get storage mision_thi:necromancer Player.Temp[0].Slot
scoreboard players remove @s thi_restore 1

execute if score @s thi_restore matches 1.. run function thi_necromancer:global/player/restore_items/restore with storage mision_thi:necromancer Player.Temp[0]
