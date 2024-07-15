# By mision_thi

$tag $(player) add thi_update

scoreboard players set @s thi_index_screen 2
$scoreboard players set $(player) thi_index_target 2

$execute as $(player) at @s run function thi_pocket_gui:gui_inventory/template/mode_2/get_inventory
function thi_pocket_gui:gui_inventory/template/mode_1/change_page
