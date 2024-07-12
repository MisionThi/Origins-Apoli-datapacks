# By mision_thi

# Set timer
power grant @s thi_necromancer:global/entity/death_timer
execute store result score @s thi_resurrect_min run data get storage mision_thi:necromancer Entity.death.timer.min
execute store result score @s thi_resurrect_sec run data get storage mision_thi:necromancer Entity.death.timer.sec

# Summon timer
$execute as @s at @s unless data entity @s CustomName run summon text_display ~ ~$(label) ~ {billboard:"center",Tags:["thi_timer"],text:'[{"score":{"name":"@s","objective":"thi_resurrect_min"}},{"text":" minutes"}]'}
$execute as @s at @s if data entity @s CustomName run summon text_display ~ ~$(label) ~ {billboard:"center",Tags:["thi_timer"],text:'[{"score":{"name":"@s","objective":"thi_resurrect_min"}},{"text":" minutes"}]'}
