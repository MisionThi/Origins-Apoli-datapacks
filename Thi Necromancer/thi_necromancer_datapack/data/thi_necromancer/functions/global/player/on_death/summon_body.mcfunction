# Source: https://github.com/bradleyq/stable_player_display/tree/main


summon minecraft:item_display ~ ~.1 ~ {Tags:["head","thi_bodypart"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[1.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ~ ~.1 ~ {Tags:["torso","thi_bodypart"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-3072.0f,0.0f],left_rotation:[1.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ~ ~.1 ~ {Tags:["arm_r","thi_bodypart"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-1024.0f,0.0f],left_rotation:[1.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ~ ~.1 ~ {Tags:["arm_l","thi_bodypart"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-2048.0f,0.0f],left_rotation:[1.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ~ ~.1 ~-.7 {Tags:["leg_r","thi_bodypart"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-4096.0f,0.0f],left_rotation:[1.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ~ ~.1 ~-.7 {Tags:["leg_l","thi_bodypart"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-5120.0f,0.0f],left_rotation:[1.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

$item replace entity @e[tag=head] hotbar.0 with minecraft:player_head{SkullOwner:"$(Name)",CustomModelData:1}
$item replace entity @e[tag=arm_r] hotbar.0 with minecraft:player_head{SkullOwner:"$(Name)",CustomModelData:2}
$item replace entity @e[tag=arm_l] hotbar.0 with minecraft:player_head{SkullOwner:"$(Name)",CustomModelData:3}
$item replace entity @e[tag=torso] hotbar.0 with minecraft:player_head{SkullOwner:"$(Name)",CustomModelData:4}
$item replace entity @e[tag=leg_r] hotbar.0 with minecraft:player_head{SkullOwner:"$(Name)",CustomModelData:5}
$item replace entity @e[tag=leg_l] hotbar.0 with minecraft:player_head{SkullOwner:"$(Name)",CustomModelData:6}

summon interaction ~ ~ ~ {width:1f,height:0.5f,Tags:["thi_interact_pl","thi_1"]}
summon interaction ~ ~ ~-1 {width:1f,height:0.5f,Tags:["thi_interact_pl","thi_2"]}

# Summon armorstand and store data
summon armor_stand ~ ~ ~-0.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["thi_stand"],ArmorItems:[{},{},{id:"minecraft:stone",Count:1b,tag:{Inventory:[]}},{}]}
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=thi_stand] at @s run function thi_necromancer:global/player/item_storage/storage_to_entity

execute as @e[type=minecraft:armor_stand,tag=thi_stand,limit=1,sort=nearest] at @s run function thi_necromancer:global/player/on_death/summon_timer
