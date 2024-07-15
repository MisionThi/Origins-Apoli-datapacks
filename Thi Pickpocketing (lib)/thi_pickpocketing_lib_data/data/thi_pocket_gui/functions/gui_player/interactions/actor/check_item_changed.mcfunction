# By mision_thi
scoreboard players set @s thi_return 0

# Check if target changed something, if so update storage and return 0
# execute if entity @s[tag=thi_update] run say has tag (actor)
execute if entity @s[tag=thi_update] run function thi_endergui:endergui/gui_change/setup with storage thi_endergui:storage Temp
execute if entity @s[tag=thi_update] store result score @s thi_return run function thi_pocket_main:api/sync_storage/remove_tag
execute if score @s thi_return matches 1 run return 0

### BUTTONS PRESSED
# Check which button was pressed
scoreboard players set .button thi_buttons 0
# Head
$execute unless data storage thi_endergui:storage Players[{UUID:$(UUID)}].gui.current[{Slot:13b}] run scoreboard players set .button thi_buttons 1
# Hands
$execute unless data storage thi_endergui:storage Players[{UUID:$(UUID)}].gui.current[{Slot:12b}] run scoreboard players set .button thi_buttons 2
# Hotbar
$execute unless data storage thi_endergui:storage Players[{UUID:$(UUID)}].gui.current[{Slot:14b}] run scoreboard players set .button thi_buttons 3
# Armor
$execute unless data storage thi_endergui:storage Players[{UUID:$(UUID)}].gui.current[{Slot:4b}] run scoreboard players set .button thi_buttons 4
# Inventory
$execute unless data storage thi_endergui:storage Players[{UUID:$(UUID)}].gui.current[{Slot:22b}] run scoreboard players set .button thi_buttons 5

# Go from mode 1 too 2
execute if score .button thi_buttons matches 1 run say press
execute if score .button thi_buttons matches 2 run scoreboard players set @s thi_gui_screen 5
execute if score .button thi_buttons matches 2 run say press hands
execute if score .button thi_buttons matches 3 run say press hotbar
execute if score .button thi_buttons matches 3 run scoreboard players set @s thi_gui_screen 2
execute if score .button thi_buttons matches 4 run say press armor
execute if score .button thi_buttons matches 4 run scoreboard players set @s thi_gui_screen 3
execute if score .button thi_buttons matches 5 run say press Inventory
execute if score .button thi_buttons matches 5 run scoreboard players set @s thi_gui_screen 4

# return 0
execute if score .button thi_buttons matches 1.. run return 0
