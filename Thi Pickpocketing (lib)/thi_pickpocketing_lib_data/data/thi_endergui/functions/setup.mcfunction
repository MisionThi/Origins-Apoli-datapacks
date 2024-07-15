# By mision_thi

# Load in chunk (makes the chunk always loaded)
forceload add 0 0 0 0

# Yellow shulker box
setblock 0 -64 0 minecraft:yellow_shulker_box

scoreboard objectives add thi_return dummy
scoreboard objectives add thi_gui_interaction dummy

# Closed enderchest detection
scoreboard objectives add x_thi_gui dummy
scoreboard objectives add y_thi_gui dummy
scoreboard objectives add xold_thi_gui dummy
scoreboard objectives add yold_thi_gui dummy
