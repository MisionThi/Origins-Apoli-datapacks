# By mision_thi

# When seconds = 0
execute if score @s thi_resurrect_sec matches 0 run scoreboard players remove @s thi_resurrect_min 1
execute if score @s thi_resurrect_sec matches 0 run scoreboard players set @s thi_resurrect_sec 60

# When seconds != 0
execute unless score @s thi_resurrect_sec matches 0 run scoreboard players remove @s thi_resurrect_sec 1

# text display
execute if score @s thi_resurrect_min matches 0 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest] {text:'[{"score":{"name":"@e[type=armor_stand,limit=1,sort=nearest,tag=thi_stand]","objective":"thi_resurrect_sec"}},{"text":" seconds"}]'}
execute if score @s thi_resurrect_min matches 1 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest] {text:'[{"score":{"name":"@e[type=armor_stand,limit=1,sort=nearest,tag=thi_stand]","objective":"thi_resurrect_min"}},{"text":" minute"}]'}
execute unless score @s thi_resurrect_min matches ..1 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest] {text:'[{"score":{"name":"@e[type=armor_stand,limit=1,sort=nearest,tag=thi_stand]","objective":"thi_resurrect_min"}},{"text":" minutes"}]'}
