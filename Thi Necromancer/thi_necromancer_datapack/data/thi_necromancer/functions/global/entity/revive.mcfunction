# By mision_thi

data modify entity @s Invulnerable set value 0b
data modify entity @s NoAI set value 0b
data modify entity @s NoGravity set value 0b
data modify entity @s Silent set value 0b
attribute @s minecraft:generic.knockback_resistance base set 0
power revoke @s thi_necromancer:global/entity/ghost

kill @e[type=minecraft:text_display,limit=1,sort=nearest]

power revoke @s thi_necromancer:global/entity/death_timer
scoreboard players reset @s thi_resurrect_min
scoreboard players reset @s thi_resurrect_sec

tag @s remove thi_statue
