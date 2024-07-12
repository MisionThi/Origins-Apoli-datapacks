# By mision_thi

$item replace entity @s weapon.mainhand with book{display:{Name:'{"text":"Incomplete Revival Tome","color":"light_purple","italic":false}', \
Lore:['{"text":"Items to collect:","color":"gray","bold":true,"italic":false}', \
'[{"text":"$(first_count) / $(first_max_count)","color":"gray","bold":false,"italic":false},{"text":" $(first_item)\'s","color":"dark_gray","bold":false,"italic":false}]',\
'[{"text":"$(second_count) / $(second_max_count)","color":"gray","bold":false,"italic":false},{"text":" $(second_item)\'s","color":"dark_gray","bold":false,"italic":false}]',\
'[{"text":"$(third_count) / $(third_max_count)","color":"gray","bold":false,"italic":false},{"text":" $(third_item)\'s","color":"dark_gray","bold":false,"italic":false}]']},\
CustomModelData:1213, \
RevivalTome: 0b, \
first_item:{item:"$(first_item)", count:$(first_count), count_max:$(first_max_count), complete:$(first_complete)}, \
second_item:{item:"$(second_item)", count:$(second_count), count_max:$(second_max_count), complete:$(second_complete)}, \
third_item:{item:"$(third_item)", count:$(third_count), count_max:$(third_max_count), complete:$(third_complete)}, \
Powers:[{Slot: "mainhand", Hidden:0b, Negative:0b, Power: "thi_necromancer:items/revival_tome/upgrade"}]} 1
