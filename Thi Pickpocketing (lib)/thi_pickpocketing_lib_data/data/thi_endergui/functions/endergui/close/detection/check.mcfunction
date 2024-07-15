# By mision_thi

scoreboard players operation @s xold_thi_gui = @s x_thi_gui
scoreboard players operation @s yold_thi_gui = @s y_thi_gui

execute store result score @s x_thi_gui run data get entity @s Rotation[0] 100000
execute store result score @s y_thi_gui run data get entity @s Rotation[1] 100000

# Revoke close power
execute unless score @s x_thi_gui = @s xold_thi_gui unless score @s y_thi_gui = @s yold_thi_gui run power revoke @s thi_endergui:close_gui

# Call close tag and clear Temp storage
execute unless score @s x_thi_gui = @s xold_thi_gui unless score @s y_thi_gui = @s yold_thi_gui run function thi_endergui:endergui/close/clear_storage
execute unless score @s x_thi_gui = @s xold_thi_gui unless score @s y_thi_gui = @s yold_thi_gui run function #thi_endergui:gui_closed
