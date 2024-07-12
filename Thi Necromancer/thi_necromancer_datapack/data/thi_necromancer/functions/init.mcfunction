
gamerule doImmediateRespawn true

# Shulker
function thi_necromancer:player/restore_items/shulkerbox/place

scoreboard objectives add thi_resurrect_min dummy
scoreboard objectives add thi_resurrect_sec dummy

scoreboard objectives add thi_resurrect_timer dummy
scoreboard objectives add thi_restore dummy
scoreboard objectives add thi_slots dummy

scoreboard objectives add thi_result dummy
scoreboard players set $-1 thi_result -1

execute unless data storage mision_thi:necromancer Mode.PlayerReviving run data modify storage mision_thi:necromancer Mode.PlayerReviving set value 1b
execute unless data storage mision_thi:necromancer Mode.Hardcore run data modify storage mision_thi:necromancer Mode.Hardcore set value 0b
