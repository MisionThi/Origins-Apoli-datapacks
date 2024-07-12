# By mision_thi

function thi_necromancer:global/player/item_storage/save_items
function thi_necromancer:global/player/item_storage/save_cords
function thi_necromancer:global/player/item_storage/save_name
power grant @s thi_necromancer:global/player/ghost
power grant @s thi_necromancer:global/player/let_me_respawn/died
tag @s add thi_death_player
function thi_necromancer:global/player/on_death/summon_body with storage mision_thi:necromancer Player
