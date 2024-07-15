# By mision_thi

# Check if the player opend a new page
execute unless score @s thi_gui_screen_old = @s thi_gui_screen run function thi_pocket_main:api/page_change/open_page {page:10}

## Clear all unwanted items
clear @s #thi_endergui:all{type:0}

## Look for items to be returned
# Isolate the items
data modify storage thi_endergui:storage Temp.return.items set from storage thi_endergui:storage Players[0].gui.current
data remove storage thi_endergui:storage Temp.return.items[{tag:{type:0}}]

# Exceptions for input slots


# Return the items
function thi_endergui:endergui/return_items/main

## Look what hapend with (buttons/items)
execute if score @s thi_gui_screen matches 10 run data modify storage thi_endergui:storage Temp.UUID set from entity @s UUID
execute if score @s thi_gui_screen matches 10 run function thi_pocket_gui:menu/gui_player/interactions/actor/check_item_changed with storage thi_endergui:storage Temp

## Reset/set gui
execute if score @s thi_gui_screen matches 10 run function thi_pocket_gui:menu/gui_player/mask

# Setup for page transfer
execute unless score @s thi_gui_screen matches 10 run function thi_pocket_main:api/page_change/close_page {page:10}
