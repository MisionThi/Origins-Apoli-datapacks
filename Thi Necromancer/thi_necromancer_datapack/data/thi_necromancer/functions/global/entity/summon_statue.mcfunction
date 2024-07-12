# By mision_thi

# Summon new entity
$summon $(type) ~ ~ ~ {Tags:["thi_statue"]}

# Give some health
data modify storage mision_thi:necromancer Entity.data.Health set value 2f

# Copy over data
$data modify entity @e[type=$(type),tag=thi_statue,limit=1,sort=nearest] {} merge from storage mision_thi:necromancer Entity.data
$data modify entity @e[type=$(type),tag=thi_statue,limit=1,sort=nearest] Invulnerable set value 1b
$data modify entity @e[type=$(type),tag=thi_statue,limit=1,sort=nearest] NoAI set value 1b
$data modify entity @e[type=$(type),tag=thi_statue,limit=1,sort=nearest] NoGravity set value 1b
$data modify entity @e[type=$(type),tag=thi_statue,limit=1,sort=nearest] Silent set value 1b
$attribute @e[type=$(type),tag=thi_statue,limit=1,sort=nearest] minecraft:generic.knockback_resistance base set 1

# Modify Sitting pose
$execute if data storage mision_thi:necromancer Entity.pose{sit:1b} run data modify entity @e[type=$(type),tag=thi_statue,limit=1,sort=nearest] Sitting set value 1b

# Add ghost power
$power grant @e[type=$(type),tag=thi_statue,limit=1,sort=nearest] thi_necromancer:global/entity/ghost

# Summon timer
$execute as @e[type=$(type),tag=thi_statue,limit=1,sort=nearest] at @s run function thi_necromancer:global/entity/summon_timer with storage mision_thi:necromancer Entity.death
