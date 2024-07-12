# By mision_thi

# Remove DeathLootTable
execute unless data storage mision_thi:necromancer Entity{type:"wolf"} run data modify entity @s DeathLootTable set value "minecraft:empty"

# Store data in storage
data modify storage mision_thi:necromancer Entity.data set from entity @s

# Remove certain items based on mob type
execute if data storage mision_thi:necromancer Entity.slots{saddle:1b} run item replace entity @s horse.saddle with minecraft:air
execute if data storage mision_thi:necromancer Entity.slots{chest:1b} run item replace entity @s horse.chest with minecraft:air
execute if data storage mision_thi:necromancer Entity.slots{armor:1b} run item replace entity @s horse.armor with minecraft:air

# Summon new entity
execute as @s at @s run function thi_necromancer:global/entity/summon_statue with storage mision_thi:necromancer Entity
