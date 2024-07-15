# By mision_thi

# Copy the return items in to the shulker
execute in minecraft:overworld run data modify block 0 -64 0 Items set from storage thi_endergui:storage Temp.return.items

# Give the items back
execute as @s at @s in minecraft:overworld run loot give @s mine 0 -64 0 minecraft:air{drop_contents:1b}

# Clear the shulker
execute in minecraft:overworld run data remove block 0 -64 0 Items[]

# Clear returned Items
# tellraw @s {"nbt":"Temp.returnitems","storage":"thi_endergui:storage"}
execute store result score @s thi_return run data get storage thi_endergui:storage Temp.return.items
execute if score @s thi_return matches 1.. run function thi_endergui:endergui/return_items/remove_from_gui/main
