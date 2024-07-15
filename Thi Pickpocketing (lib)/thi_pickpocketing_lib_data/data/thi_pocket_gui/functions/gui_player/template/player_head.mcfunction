# By mision_thi

item replace block 0 -64 0 container.0 with player_head{CustomModelData:40601} 1
$execute as $(player) at @s run item modify block 0 -64 0 container.0 thi_pocket_gui:player_head

item replace entity @s enderchest.13 from block 0 -64 0 container.0

# item replace entity @s enderchest.13 with player_head{CustomModelData:40601} 1
# $execute as $(player) at @s run item modify entity @s enderchest.13 thi_pocket_gui:player_head
