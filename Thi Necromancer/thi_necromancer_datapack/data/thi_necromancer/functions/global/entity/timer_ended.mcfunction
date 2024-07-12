# By mision_thi
$data modify entity @s DeathLootTable set value "minecraft:entities/$(type)"

kill @e[type=minecraft:text_display,limit=1,sort=nearest]
data modify entity @s Invulnerable set value 0b
damage @s 1000 thi_necromancer:no_resurrect
