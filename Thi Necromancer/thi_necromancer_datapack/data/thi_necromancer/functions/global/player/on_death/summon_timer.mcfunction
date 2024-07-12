# By mision_thi

# Set timer
power grant @s thi_necromancer:global/player/death_timer
scoreboard players set @s thi_resurrect_min 10
scoreboard players set @s thi_resurrect_sec 0

# Summon timer
execute as @s at @s run summon text_display ~ ~1 ~ {billboard:"center",Tags:["thi_timer"],text:'[{"score":{"name":"@e[type=armor_stand,limit=1,sort=nearest,tag=thi_stand]","objective":"thi_resurrect_min"}},{"text":" minutes"}]'}
